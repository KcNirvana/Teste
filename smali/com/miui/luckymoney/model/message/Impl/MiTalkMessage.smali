.class public Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/luckymoney/model/message/AppMessage;
.implements Ljava/io/Serializable;


# static fields
.field public static final CONVERSATION_TYPE_GROUP:Ljava/lang/String; = "group"

.field public static final KEY_CONVERSATION_ID:Ljava/lang/String; = "conversation_id"

.field public static final KEY_MESSAGE_TYPE:Ljava/lang/String; = "msg_type"

.field public static final MESSAGE_TYPE_LUCKY_MONKEY:I = 0x37

.field public static final MESSAGE_TYPE_UNKNOWN:I = -0x1

.field public static final PATTERN_MESSAGE:Ljava/lang/String; = "^(\\[\\d+\u6761\\])?\\s*(.*?):\\s*(\\[\u7c73\u804a\u7ea2\u5305\\](.*))"

.field private static final serialVersionUID:J = -0x7cbd8a3e346e79aeL


# instance fields
.field public conversationId:Ljava/lang/String;

.field public conversationName:Ljava/lang/String;

.field public from:Ljava/lang/String;

.field public isGroup:Z

.field public isLuckMoney:Z

.field private final mNotification:Lcom/miui/luckymoney/model/Notification;

.field private final mPatternMessage:Ljava/util/regex/Pattern;

.field public message:Ljava/lang/String;

.field public messageType:I

.field public notificationId:I

.field public notificationTag:Ljava/lang/String;

.field public pendingIntent:Landroid/app/PendingIntent;

.field public receivedTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/luckymoney/model/Notification;)V
    .locals 8

    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->message:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->from:Ljava/lang/String;

    iput v7, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->messageType:I

    iput-boolean v2, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->isLuckMoney:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->conversationId:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->conversationName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->isGroup:Z

    const-string/jumbo v0, "^(\\[\\d+\u6761\\])?\\s*(.*?):\\s*(\\[\u7c73\u804a\u7ea2\u5305\\](.*))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->mPatternMessage:Ljava/util/regex/Pattern;

    iput-object p2, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->mNotification:Lcom/miui/luckymoney/model/Notification;

    iget v0, p2, Lcom/miui/luckymoney/model/Notification;->id:I

    iput v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->notificationId:I

    iget-object v0, p2, Lcom/miui/luckymoney/model/Notification;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->notificationTag:Ljava/lang/String;

    iget-object v0, p2, Lcom/miui/luckymoney/model/Notification;->notification:Landroid/app/Notification;

    iget-wide v4, v0, Landroid/app/Notification;->when:J

    iput-wide v4, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->receivedTime:J

    invoke-virtual {p2}, Lcom/miui/luckymoney/model/Notification;->getNotificationContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->message:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->mPatternMessage:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v1, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->isLuckMoney:Z

    iput-boolean v1, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->isGroup:Z

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->from:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->from:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->from:Ljava/lang/String;

    :cond_0
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->message:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->message:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->message:Ljava/lang/String;

    :cond_1
    iget-object v0, p2, Lcom/miui/luckymoney/model/Notification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->pendingIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->pendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0}, Lcom/miui/a/c/d;->btP(Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v3, "getIntent"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v6, v4}, Lcom/miui/a/c/d;->btQ(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/c/d;->btR()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string/jumbo v0, "msg_type"

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->messageType:I

    iget v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->messageType:I

    if-eq v0, v7, :cond_2

    iget v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->messageType:I

    const/16 v4, 0x37

    if-ne v0, v4, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->isLuckMoney:Z

    :cond_2
    const-string/jumbo v0, "conversation_id"

    const-string/jumbo v4, ""

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->conversationId:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->conversationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->conversationId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->conversationId:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->conversationId:Ljava/lang/String;

    const-string/jumbo v3, "group"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->isGroup:Z

    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/miui/luckymoney/model/Notification;->getNotificationTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->conversationName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->conversationName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "com.xiaomi.channel"

    invoke-static {p1, v0}, Lcom/miui/luckymoney/utils/PackageUtil;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->conversationName:Ljava/lang/String;

    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    iput-boolean v2, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->isGroup:Z

    goto :goto_1
.end method


# virtual methods
.method public getAction()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->conversationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mitalk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mitalk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->conversationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->conversationName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotification()Lcom/miui/luckymoney/model/Notification;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->mNotification:Lcom/miui/luckymoney/model/Notification;

    return-object v0
.end method

.method public getWarningPackageName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.xiaomi.channel"

    return-object v0
.end method

.method public isBusinessMessage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGroupMessage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->isGroup:Z

    return v0
.end method

.method public isHongbao()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->isLuckMoney:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "coversation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->conversationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nmessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nfrom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nwhen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->receivedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nisLucky:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->isHongbao()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nisGroup:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->isGroupMessage()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nconversationId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/MiTalkMessage;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
