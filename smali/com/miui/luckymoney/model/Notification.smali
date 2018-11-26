.class public Lcom/miui/luckymoney/model/Notification;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final EXTRA_ANDROID_TEXT:Ljava/lang/String; = "android.text"

.field private static final EXTRA_ANDROID_TITLE:Ljava/lang/String; = "android.title"


# instance fields
.field public final id:I

.field public final notification:Landroid/app/Notification;

.field public final packageName:Ljava/lang/String;

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/luckymoney/model/Notification;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/miui/luckymoney/model/Notification;->id:I

    iput-object p3, p0, Lcom/miui/luckymoney/model/Notification;->tag:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/luckymoney/model/Notification;->notification:Landroid/app/Notification;

    return-void
.end method


# virtual methods
.method public getNotificationContent()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/miui/luckymoney/model/Notification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/luckymoney/model/Notification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.text"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/model/Notification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_0
    if-nez v0, :cond_1

    :goto_1
    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getNotificationTitle()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/miui/luckymoney/model/Notification;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
