/****************************************************************************
** Meta object code from reading C++ file 'treeelement.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.13.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../swipe/treeelement.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'treeelement.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.13.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_TreeElement_t {
    QByteArrayData data[9];
    char stringdata0[99];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_TreeElement_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_TreeElement_t qt_meta_stringdata_TreeElement = {
    {
QT_MOC_LITERAL(0, 0, 11), // "TreeElement"
QT_MOC_LITERAL(1, 12, 15), // "DefaultProperty"
QT_MOC_LITERAL(2, 28, 5), // "items"
QT_MOC_LITERAL(3, 34, 10), // "parentItem"
QT_MOC_LITERAL(4, 45, 12), // "TreeElement*"
QT_MOC_LITERAL(5, 58, 0), // ""
QT_MOC_LITERAL(6, 59, 3), // "pos"
QT_MOC_LITERAL(7, 63, 5), // "count"
QT_MOC_LITERAL(8, 69, 29) // "QQmlListProperty<TreeElement>"

    },
    "TreeElement\0DefaultProperty\0items\0"
    "parentItem\0TreeElement*\0\0pos\0count\0"
    "QQmlListProperty<TreeElement>"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_TreeElement[] = {

 // content:
       8,       // revision
       0,       // classname
       1,   14, // classinfo
       3,   16, // methods
       1,   34, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // classinfo: key, value
       1,    2,

 // methods: name, argc, parameters, tag, flags
       3,    0,   31,    5, 0x02 /* Public */,
       6,    0,   32,    5, 0x02 /* Public */,
       7,    0,   33,    5, 0x02 /* Public */,

 // methods: parameters
    0x80000000 | 4,
    QMetaType::Int,
    QMetaType::Int,

 // properties: name, type, flags
       2, 0x80000000 | 8, 0x00095009,

       0        // eod
};

void TreeElement::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<TreeElement *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: { TreeElement* _r = _t->parentItem();
            if (_a[0]) *reinterpret_cast< TreeElement**>(_a[0]) = std::move(_r); }  break;
        case 1: { int _r = _t->pos();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        case 2: { int _r = _t->count();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        default: ;
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<TreeElement *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QQmlListProperty<TreeElement>*>(_v) = _t->items(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
}

QT_INIT_METAOBJECT const QMetaObject TreeElement::staticMetaObject = { {
    &QObject::staticMetaObject,
    qt_meta_stringdata_TreeElement.data,
    qt_meta_data_TreeElement,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *TreeElement::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *TreeElement::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_TreeElement.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int TreeElement::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 3;
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 1;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 1;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
