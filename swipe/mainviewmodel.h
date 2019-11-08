#ifndef MAINVIEWMODEL_H
#define MAINVIEWMODEL_H

#include "mainmodel.h"

#include <QObject>


class MainViewModel : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
    Q_PROPERTY(QString password READ password WRITE setPassword NOTIFY passwordChanged)
    Q_PROPERTY(QString state READ state WRITE setState NOTIFY stateChanged)
public:
    explicit MainViewModel(QObject *parent = 0);
    MainModel* model();
    void setModel(MainModel *model);
    QString name();
    void setName(const QString &name);
    QString password();
    void setPassword(const QString &password);
    QString state();
    void setState(const QString &state);
    Q_INVOKABLE void loginButtonClicked();
signals:
    void nameChanged(const QString &);
    void passwordChanged(const QString &);
    void stateChanged(const QString &);
private:
    QString m_name;
    QString m_password;
    QString m_state;
    MainModel *m_model;
};


#endif // MAINVIEWMODEL_H
