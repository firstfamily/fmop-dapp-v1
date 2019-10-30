/****************************************************************************
** Meta object code from reading C++ file 'treemodel.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.13.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../swipe/treemodel.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'treemodel.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.13.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_TreeModel_t {
    QByteArrayData data[14];
    char stringdata0[154];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_TreeModel_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_TreeModel_t qt_meta_stringdata_TreeModel = {
    {
QT_MOC_LITERAL(0, 0, 9), // "TreeModel"
QT_MOC_LITERAL(1, 10, 15), // "DefaultProperty"
QT_MOC_LITERAL(2, 26, 5), // "items"
QT_MOC_LITERAL(3, 32, 12), // "rolesChanged"
QT_MOC_LITERAL(4, 45, 0), // ""
QT_MOC_LITERAL(5, 46, 16), // "indexFromElement"
QT_MOC_LITERAL(6, 63, 11), // "QModelIndex"
QT_MOC_LITERAL(7, 75, 12), // "TreeElement*"
QT_MOC_LITERAL(8, 88, 4), // "item"
QT_MOC_LITERAL(9, 93, 13), // "insertElement"
QT_MOC_LITERAL(10, 107, 6), // "parent"
QT_MOC_LITERAL(11, 114, 3), // "pos"
QT_MOC_LITERAL(12, 118, 29), // "QQmlListProperty<TreeElement>"
QT_MOC_LITERAL(13, 148, 5) // "roles"

    },
    "TreeModel\0DefaultProperty\0items\0"
    "rolesChanged\0\0indexFromElement\0"
    "QModelIndex\0TreeElement*\0item\0"
    "insertElement\0parent\0pos\0"
    "QQmlListProperty<TreeElement>\0roles"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_TreeModel[] = {

 // content:
       8,       // revision
       0,       // classname
       1,   14, // classinfo
       5,   16, // methods
       2,   60, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // classinfo: key, value
       1,    2,

 // signals: name, argc, parameters, tag, flags
       3,    0,   41,    4, 0x06 /* Public */,

 // methods: name, argc, parameters, tag, flags
       5,    1,   42,    4, 0x02 /* Public */,
       9,    3,   45,    4, 0x02 /* Public */,
       9,    2,   52,    4, 0x22 /* Public | MethodCloned */,
       9,    1,   57,    4, 0x22 /* Public | MethodCloned */,

 // signals: parameters
    QMetaType::Void,

 // methods: parameters
    0x80000000 | 6, 0x80000000 | 7,    8,
    QMetaType::Bool, 0x80000000 | 7, 0x80000000 | 6, QMetaType::Int,    8,   10,   11,
    QMetaType::Bool, 0x80000000 | 7, 0x80000000 | 6,    8,   10,
    QMetaType::Bool, 0x80000000 | 7,    8,

 // properties: name, type, flags
       2, 0x80000000 | 12, 0x00095009,
      13, QMetaType::QVariantList, 0x00495103,

 // properties: notify_signal_id
       0,
       0,

       0        // eod
};

void TreeModel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<TreeModel *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->rolesChanged(); break;
        case 1: { QModelIndex _r = _t->indexFromElement((*reinterpret_cast< TreeElement*(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< QModelIndex*>(_a[0]) = std::move(_r); }  break;
        case 2: { bool _r = _t->insertElement((*reinterpret_cast< TreeElement*(*)>(_a[1])),(*reinterpret_cast< const QModelIndex(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        case 3: { bool _r = _t->insertElement((*reinterpret_cast< TreeElement*(*)>(_a[1])),(*reinterpret_cast< const QModelIndex(*)>(_a[2])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        case 4: { bool _r = _t->insertElement((*reinterpret_cast< TreeElement*(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (TreeModel::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&TreeModel::rolesChanged)) {
                *result = 0;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<TreeModel *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QQmlListProperty<TreeElement>*>(_v) = _t->items(); break;
        case 1: *reinterpret_cast< QVariantList*>(_v) = _t->roles(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<TreeModel *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 1: _t->setRoles(*reinterpret_cast< QVariantList*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
}

QT_INIT_METAOBJECT const QMetaObject TreeModel::staticMetaObject = { {
    &QAbstractItemModel::staticMetaObject,
    qt_meta_stringdata_TreeModel.data,
    qt_meta_data_TreeModel,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *TreeModel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *TreeModel::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_TreeModel.stringdata0))
        return static_cast<void*>(this);
    return QAbstractItemModel::qt_metacast(_clname);
}

int TreeModel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QAbstractItemModel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 5;
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 2;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void TreeModel::rolesChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
