.class public Lcom/miui/luckymoney/model/message/Impl/QQMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/luckymoney/model/message/AppMessage;
.implements Ljava/io/Serializable;


# static fields
.field public static final KEY_CONVERSATION_ID:Ljava/lang/String; = "uin"

.field public static final KEY_CONVERSATION_NAME:Ljava/lang/String; = "uinname"

.field public static final KEY_CONVERSATION_TYPE:Ljava/lang/String; = "uintype"

.field public static final LUCKY_MONEY_KEYWORD:Ljava/lang/String; = "[QQ\u7ea2\u5305]"

.field public static final PATTERN_MESSAGE:Ljava/lang/String; = "^(.*?):\\s*(.*)"

.field public static final TYPE_DISCUSS_GROUP:I = 0xbb8

.field public static final TYPE_PERSISTENT_GROUP:I = 0x1

.field public static final TYPE_UNKNOWN:I = -0x1

.field private static final serialVersionUID:J = -0x7cbd8a3e346e79aeL


# instance fields
.field public conversationId:Ljava/lang/String;

.field public conversationName:Ljava/lang/String;

.field public from:Ljava/lang/String;

.field private final mNotification:Lcom/miui/luckymoney/model/Notification;

.field private final mPatternMessage:Ljava/util/regex/Pattern;

.field public message:Ljava/lang/String;

.field public notificationId:I

.field public notificationTag:Ljava/lang/String;

.field public pendingIntent:Landroid/app/PendingIntent;

.field public receivedTime:J

.field public treatedAsGroupMessage:Z

.field public type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/luckymoney/model/Notification;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->message:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->from:Ljava/lang/String;

    iput v4, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->type:I

    iput-boolean v2, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->treatedAsGroupMessage:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationId:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    const-string/jumbo v0, "^(.*?):\\s*(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->mPatternMessage:Ljava/util/regex/Pattern;

    iput-object p2, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->mNotification:Lcom/miui/luckymoney/model/Notification;

    iget v0, p2, Lcom/miui/luckymoney/model/Notification;->id:I

    iput v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->notificationId:I

    iget-object v0, p2, Lcom/miui/luckymoney/model/Notification;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->notificationTag:Ljava/lang/String;

    iget-object v0, p2, Lcom/miui/luckymoney/model/Notification;->notification:Landroid/app/Notification;

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    iput-wide v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->receivedTime:J

    invoke-virtual {p2}, Lcom/miui/luckymoney/model/Notification;->getNotificationContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->message:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->message:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->message:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->mPatternMessage:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->from:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->from:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->from:Ljava/lang/String;

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->message:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->message:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->message:Ljava/lang/String;

    :cond_2
    iget-object v0, p2, Lcom/miui/luckymoney/model/Notification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->pendingIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->pendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0}, Lcom/miui/a/c/d;->btP(Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v1, "getIntent"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/a/c/d;->btQ(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/c/d;->btR()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v1, "uintype"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->type:I

    const-string/jumbo v1, "uin"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationId:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationId:Ljava/lang/String;

    :cond_3
    const-string/jumbo v1, "uinname"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/miui/luckymoney/model/Notification;->getNotificationTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "com.tencent.mobileqq"

    invoke-static {p1, v0}, Lcom/miui/luckymoney/utils/PackageUtil;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    :cond_6
    return-void
.end method


# virtual methods
.method public getAction()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tencentqq_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tencentqq_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotification()Lcom/miui/luckymoney/model/Notification;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->mNotification:Lcom/miui/luckymoney/model/Notification;

    return-object v0
.end method

.method public getWarningPackageName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.tencent.mobileqq"

    return-object v0
.end method

.method public isBusinessMessage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGroupMessage()Z
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->type:I

    if-ne v2, v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->type:I

    const/16 v1, 0xbb8

    if-ne v1, v0, :cond_1

    return v2

    :cond_1
    iget-boolean v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->treatedAsGroupMessage:Z

    return v0
.end method

.method public isHongbao()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->message:Ljava/lang/String;

    const-string/jumbo v1, "[QQ\u7ea2\u5305]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "coversation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nmessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nfrom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nwhen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->receivedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nisLucky:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->isHongbao()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nisGroup:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->isGroupMessage()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nconversationId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
