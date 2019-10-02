.class public Lcom/xiaomi/passport/AccountChangedBroadcastHelper;
.super Ljava/lang/Object;
.source "AccountChangedBroadcastHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;
    }
.end annotation


# static fields
.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "extra_account"

.field public static final EXTRA_UPDATE_TYPE:Ljava/lang/String; = "extra_update_type"

.field private static final LOCAL_LOGIN_ACCOUNTS_POST_CHANGED_ACTION:Ljava/lang/String; = "com.xiaomi.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

.field private static final LOCAL_LOGIN_ACCOUNTS_PRE_CHANGED_ACTION:Ljava/lang/String; = "com.xiaomi.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

.field private static final SYSTEM_LOGIN_ACCOUNTS_POST_CHANGED_ACTION:Ljava/lang/String; = "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

.field private static final SYSTEM_LOGIN_ACCOUNTS_PRE_CHANGED_ACTION:Ljava/lang/String; = "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

.field public static final TYPE_ADD:I = 0x2

.field public static final TYPE_REFRESH:I = 0x3

.field public static final TYPE_REMOVE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountsPostChangedAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->isUseSystem()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    goto :goto_0

    :cond_0
    const-string p0, "com.xiaomi.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    :goto_0
    return-object p0
.end method

.method public static getAccountsPreChangedAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->isUseSystem()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

    goto :goto_0

    :cond_0
    const-string p0, "com.xiaomi.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

    :goto_0
    return-object p0
.end method

.method public static sendBroadcast(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    sget-object v0, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$1;->$SwitchMap$com$xiaomi$passport$AccountChangedBroadcastHelper$UpdateType:[I

    invoke-virtual {p2}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper$UpdateType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const/4 v1, 0x2

    packed-switch p2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "this should not be happen"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p0}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper;->getAccountsPostChangedAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :pswitch_1
    invoke-static {p0}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper;->getAccountsPreChangedAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :pswitch_2
    invoke-static {p0}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper;->getAccountsPostChangedAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_3
    invoke-static {p0}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper;->getAccountsPostChangedAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_4
    invoke-static {p0}, Lcom/xiaomi/passport/AccountChangedBroadcastHelper;->getAccountsPreChangedAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/4 v0, 0x2

    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "extra_account"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "extra_update_type"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->isUseSystem()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
