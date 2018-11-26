.class Lcom/miui/common/h/d;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic aCt:Lcom/miui/common/h/b;


# direct methods
.method private constructor <init>(Lcom/miui/common/h/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/h/d;->aCt:Lcom/miui/common/h/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/common/h/b;Lcom/miui/common/h/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/h/d;-><init>(Lcom/miui/common/h/b;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/h/d;->aCt:Lcom/miui/common/h/b;

    invoke-static {v0}, Lcom/miui/common/h/b;->aNp(Lcom/miui/common/h/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
