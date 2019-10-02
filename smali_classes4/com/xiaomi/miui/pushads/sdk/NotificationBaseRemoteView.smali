.class Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;
.super Landroid/widget/RemoteViews;


# instance fields
.field protected a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "notification_base_layout"

    const-string v3, "layout"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const v0, 0x1020006

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setImageViewResource(II)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "action_button"

    const-string v2, "id"

    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setTextViewText(ILjava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setViewVisibility(II)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, ""

    goto :goto_0

    :cond_3
    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "sub_title"

    const-string v2, "id"

    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setViewVisibility(II)V

    :cond_4
    iget-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "title"

    const-string v1, "id"

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void
.end method
