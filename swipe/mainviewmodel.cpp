#include "mainviewmodel.h"

MainViewModel::MainViewModel(QObject *parent) : QObject(parent),
    m_model(NULL)
{
}
MainModel *MainViewModel::model()
{
    return m_model;
}
void MainViewModel::setModel(MainModel *model)
{
    m_model = model;
    if (m_model)
    {
        connect(this, &MainViewModel::nameChanged, m_model, &MainModel::setName);
        connect(this, &MainViewModel::passwordChanged, m_model, &MainModel::setPassword);
    }
}
QString MainViewModel::name()
{
    return m_name;
}
void MainViewModel::setName(const QString &name)
{
    m_name = name;
    emit nameChanged(m_name);
}
QString MainViewModel::password()
{
    return m_password;
}
void MainViewModel::setPassword(const QString &password)
{
    m_password = password;
    emit passwordChanged(m_password);
}
QString MainViewModel::state()
{
    return m_state;
}
void MainViewModel::setState(const QString &state)
{
    m_state = state;
    emit stateChanged(state);
}
void MainViewModel::loginButtonClicked()
{
    if (m_model)
    {
        QString errorCode;
        if (!m_model->login(&errorCode))
        {
            setState("Failed:" + errorCode);
        }
        else
        {
            setState("Successed");
        }
    }
}
