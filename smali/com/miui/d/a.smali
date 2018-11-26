.class public Lcom/miui/d/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static bdD:Landroid/content/Context;

.field private static bdE:Lcom/miui/d/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/d/c;

    invoke-direct {v0}, Lcom/miui/d/c;-><init>()V

    sput-object v0, Lcom/miui/d/a;->bdE:Lcom/miui/d/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bAY()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/miui/d/a;->bdD:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/d/a;->bdE:Lcom/miui/d/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/d/a;->bdD:Landroid/content/Context;

    sget-object v1, Lcom/miui/d/a;->bdE:Lcom/miui/d/c;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    sget-object v0, Lcom/miui/d/a;->bdD:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/d/a;->bdD:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/d/d;->bBa(Landroid/content/Context;)Lcom/miui/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/d/d;->bBd()V

    :cond_1
    sput-object v2, Lcom/miui/d/a;->bdE:Lcom/miui/d/c;

    sput-object v2, Lcom/miui/d/a;->bdD:Landroid/content/Context;

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the context must not be null when initing the UnifiedAdManager!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/miui/d/a;->bdD:Landroid/content/Context;

    sget-object v0, Lcom/miui/d/a;->bdD:Landroid/content/Context;

    if-nez v0, :cond_1

    sput-object p0, Lcom/miui/d/a;->bdD:Landroid/content/Context;

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "miui.intent.action.ad.UNIFIED_AD_UPDATING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/d/a;->bdD:Landroid/content/Context;

    sget-object v2, Lcom/miui/d/a;->bdE:Lcom/miui/d/c;

    const-string/jumbo v3, "miui.permission.AD_COMMON_PERMISSION_SYSTEM_OR_SIGNATURE"

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
