.class public Lcom/xiaomi/a/h;
.super Lcom/xiaomi/a/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/a/a;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EventAction"

    invoke-static {v0}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eventName is null when constructing EventAction!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/a/h;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/a/h;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaomi/a/h;->a(Ljava/lang/String;)Lcom/xiaomi/a/a;

    if-eqz p2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "_event_default_param_"

    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/a/a;

    :cond_1
    return-void
.end method
