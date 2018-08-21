.class public Lcom/miui/personalassistant/express/receiver/AccountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/express/receiver/AccountReceiver$UnsubscribeTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountReceiver"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/express/receiver/AccountReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/receiver/AccountReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iput-object p1, p0, Lcom/miui/personalassistant/express/receiver/AccountReceiver;->mContext:Landroid/content/Context;

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "AccountReceiver"

    const-string/jumbo v3, "onReceive: remove all binded phones"

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "extra_update_type"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v2, Lcom/miui/personalassistant/express/receiver/AccountReceiver$UnsubscribeTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/personalassistant/express/receiver/AccountReceiver$UnsubscribeTask;-><init>(Lcom/miui/personalassistant/express/receiver/AccountReceiver;Lcom/miui/personalassistant/express/receiver/AccountReceiver$1;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/express/receiver/AccountReceiver$UnsubscribeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
