.class public Lcom/xiaomi/passport/PassportExternal;
.super Ljava/lang/Object;
.source "PassportExternal.java"


# static fields
.field private static sAuthenticatorComponentNameInterface:Lcom/xiaomi/passport/interfaces/AuthenticatorComponentNameInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthenticatorComponentNameInterface(Landroid/content/Context;)Lcom/xiaomi/passport/interfaces/AuthenticatorComponentNameInterface;
    .locals 0

    sget-object p0, Lcom/xiaomi/passport/PassportExternal;->sAuthenticatorComponentNameInterface:Lcom/xiaomi/passport/interfaces/AuthenticatorComponentNameInterface;

    return-object p0
.end method

.method public static getEnvironment()Lcom/xiaomi/passport/PassportUserEnvironment;
    .locals 1

    invoke-static {}, Lcom/xiaomi/passport/PassportUserEnvironment$Holder;->getInstance()Lcom/xiaomi/passport/PassportUserEnvironment;

    move-result-object v0

    return-object v0
.end method

.method public static initEnvironment(Lcom/xiaomi/passport/PassportUserEnvironment;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/passport/PassportUserEnvironment$Holder;->setInstance(Lcom/xiaomi/passport/PassportUserEnvironment;)V

    return-void
.end method

.method public static initIPUtilExternal(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/IPUtilExternalImpl;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/IPUtilExternalImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->setIpUtilExternal(Lcom/xiaomi/accountsdk/request/IPUtilExternal;)V

    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->init(Lcom/xiaomi/accountsdk/request/IPUtilExternal;)V

    return-void
.end method

.method public static setAuthenticatorComponentNameInterface(Lcom/xiaomi/passport/interfaces/AuthenticatorComponentNameInterface;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/passport/PassportExternal;->sAuthenticatorComponentNameInterface:Lcom/xiaomi/passport/interfaces/AuthenticatorComponentNameInterface;

    return-void
.end method
