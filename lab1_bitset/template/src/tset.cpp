// ННГУ, ВМК, Курс "Методы программирования-2", С++, ООП
//
// tset.cpp - Copyright (c) Гергель В.П. 04.10.2001
//   Переработано для Microsoft Visual Studio 2008 Сысоевым А.В. (19.04.2015)
//
// Множество - реализация через битовые поля

#include "tset.h"

TSet::TSet(int mp) : BitField(mp), MaxPower(mp) {}

// конструктор копирования
TSet::TSet(const TSet& s) : MaxPower (s.MaxPower), BitField(s.BitField) {}

// конструктор преобразования типа
TSet::TSet(const TBitField& bf) : BitField(bf), MaxPower(bf.GetLength()) {}

TSet::operator TBitField()
{
    return BitField;
}

int TSet::GetMaxPower(void) const // получить макс. к-во эл-тов
{
    return MaxPower;
}

int TSet::IsMember(const int Elem) const // элемент множества?
{
    if (Elem < 0 || Elem >= MaxPower) {
        throw "Element index out of range";
    }
    return BitField.GetBit(Elem);
}


void TSet::InsElem(const int Elem) // включение элемента множества
{
    if (Elem < 0 || Elem >= MaxPower) {
        throw "Element index out of range";
    }
    BitField.SetBit(Elem);
}

void TSet::DelElem(const int Elem) // исключение элемента множества
{
    if (Elem < 0 || Elem >= MaxPower) {
        throw "Element index out of range";
    }
    BitField.ClrBit(Elem);
}

// теоретико-множественные операции

TSet& TSet::operator=(const TSet& s) // присваивание
{
    if (this != &s) {
        MaxPower = s.MaxPower;
        BitField = s.BitField;
    }
    return *this;
}

int TSet::operator==(const TSet& s) const // сравнение
{
    if (MaxPower != s.MaxPower) {
        return false;
    }
    return BitField == s.BitField;
}

int TSet::operator!=(const TSet& s) const // сравнение
{
    if (MaxPower != s.MaxPower) {
        return true;
    }
    return BitField != s.BitField;
    //return !(*this == s);
}

TSet TSet::operator+(const TSet& s) // объединение
{
    int  NEWmp = max(MaxPower, s.MaxPower);
    TSet result(NEWmp);
   // result.MaxPower = MaxPower + s.MaxPower;
    result.BitField = BitField | s.BitField;
    return result;
}

TSet TSet::operator+(const int Elem) // объединение с элементом
{
    TSet result(*this); // создаем копию текущего множества
    result.InsElem(Elem); // включаем элемент
    return result; // возвращаем новое множество
}

TSet TSet::operator-(const int Elem) // разность с элементом
{
    TSet result(*this); // создаем копию текущего множества
    result.DelElem(Elem); // исключаем элемент
    return result; // возвращаем новое множество
}

TSet TSet::operator*(const TSet& s) // пересечение
{
    int NEWmp = max(MaxPower, s.MaxPower);
    TSet result(NEWmp);
    result.BitField = BitField & s.BitField;
    return result;
}

TSet TSet::operator~(void) // дополнение
{
    TSet result(MaxPower);
    result.BitField = ~BitField;
    return result;
}

// перегрузка ввода/вывода

istream& operator>>(istream& istr, TSet& s) // ввод
{
    for (int i = 0; i < s.MaxPower; i++) {
        int value;
        istr >> value;
        if (value == 1) {
            s.InsElem(i); // включаем элемент
        }
        else {
            s.DelElem(i); // исключаем элемент
        }
    }
    return istr;
}

ostream& operator<<(ostream& ostr, const TSet& s) // вывод
{
    for (int i = 0; i < s.MaxPower; i++) {
        ostr << s.IsMember(i); // выводим 0 или 1
    }
    return ostr;
}