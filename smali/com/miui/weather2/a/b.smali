.class final Lcom/miui/weather2/a/b;
.super Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/a/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/weather2/a/b;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/weather2/a/b;->c:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/a/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/a/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/weather2/a/b;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/a/b;->c:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/a/b;->c:Lcom/xiaomi/ad/feedback/IAdFeedbackListener;

    invoke-interface {v0, p1}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener;->onFinished(I)V

    :cond_1
    return-void
.end method
