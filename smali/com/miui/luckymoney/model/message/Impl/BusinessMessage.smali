.class public Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/luckymoney/model/message/AppMessage;
.implements Ljava/io/Serializable;


# static fields
.field public static final PATTERN_MESSAGE:[Ljava/lang/String;

.field private static final serialVersionUID:J = -0x7cbd8a3e346e79aeL


# instance fields
.field public conversationId:Ljava/lang/String;

.field public conversationName:Ljava/lang/String;

.field public from:Ljava/lang/String;

.field private isLuckMoney:Z

.field private final mNotification:Lcom/miui/luckymoney/model/Notification;

.field public message:Ljava/lang/String;

.field public notificationId:I

.field public notificationTag:Ljava/lang/String;

.field private pendingIntent:Landroid/app/PendingIntent;

.field public receivedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u60a8\u5728\u4e2d\u79cb\u73b0\u91d1\u7ea2\u5305"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u73b0\u91d1\u7ea2\u5305\u6708\u6708\u9001"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u7c73\u7c89\u8fc7\u5e74\u5927\u72c2\u6b22"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u5143\u5bb5\u73b0\u91d1\u7ea2\u5305\u5927\u6d3e\u9001"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->PATTERN_MESSAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/luckymoney/model/Notification;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->message:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->from:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->conversationId:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->conversationName:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->isLuckMoney:Z

    iput-object p2, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->mNotification:Lcom/miui/luckymoney/model/Notification;

    iget v0, p2, Lcom/miui/luckymoney/model/Notification;->id:I

    iput v0, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->notificationId:I

    iget-object v0, p2, Lcom/miui/luckymoney/model/Notification;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->notificationTag:Ljava/lang/String;

    iget-object v0, p2, Lcom/miui/luckymoney/model/Notification;->notification:Landroid/app/Notification;

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    iput-wide v0, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->receivedTime:J

    invoke-virtual {p2}, Lcom/miui/luckymoney/model/Notification;->getNotificationContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->message:Ljava/lang/String;

    iget-object v0, p2, Lcom/miui/luckymoney/model/Notification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->pendingIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->pendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0}, Lcom/miui/a/c/d;->btP(Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v1, "getIntent"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/a/c/d;->btQ(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/c/d;->btR()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->message:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.mipay.wallet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->message:Ljava/lang/String;

    sget-object v1, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->PATTERN_MESSAGE:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->stringContains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->isLuckMoney:Z

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/miui/luckymoney/model/Notification;->getNotificationTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->conversationName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->conversationName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "com.mipay.wallet"

    invoke-static {p1, v0}, Lcom/miui/luckymoney/utils/PackageUtil;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->conversationName:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    iput-boolean v4, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->isLuckMoney:Z

    goto :goto_0
.end method

.method private stringContains(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    array-length v2, p2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p2, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public getAction()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->conversationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "business_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "business_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->conversationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/miui/common/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07018b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotification()Lcom/miui/luckymoney/model/Notification;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->mNotification:Lcom/miui/luckymoney/model/Notification;

    return-object v0
.end method

.method public getWarningPackageName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.mipay.wallet"

    return-object v0
.end method

.method public isBusinessMessage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isGroupMessage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHongbao()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->isLuckMoney:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "conversationName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->conversationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nmessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nfromWhen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nwhen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->receivedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nisLucky:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->isHongbao()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nisGroup:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->isGroupMessage()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nconversationId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/BusinessMessage;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
