.class public interface abstract Lcom/miui/personalassistant/utils/XiaomiAccount$LoginCallBack;
.super Ljava/lang/Object;
.source "XiaomiAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/utils/XiaomiAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoginCallBack"
.end annotation


# virtual methods
.method public abstract onInvalidToken(Landroid/accounts/Account;)V
.end method

.method public abstract onLoginFailed()V
.end method

.method public abstract onLoginSuccess(Landroid/accounts/Account;)V
.end method

.method public abstract onLogout(Landroid/accounts/Account;)V
.end method
