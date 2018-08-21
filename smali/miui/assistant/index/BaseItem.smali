.class public Lmiui/assistant/index/BaseItem;
.super Ljava/lang/Object;
.source "BaseItem.java"


# instance fields
.field private dueTime:J

.field private groupId:Ljava/lang/String;

.field private uniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lmiui/assistant/index/BaseItem;->dueTime:J

    return-void
.end method


# virtual methods
.method public getDueTime()J
    .locals 2

    iget-wide v0, p0, Lmiui/assistant/index/BaseItem;->dueTime:J

    return-wide v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/assistant/index/BaseItem;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/assistant/index/BaseItem;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public setDueTime(J)V
    .locals 1

    iput-wide p1, p0, Lmiui/assistant/index/BaseItem;->dueTime:J

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/assistant/index/BaseItem;->groupId:Ljava/lang/String;

    return-void
.end method

.method public setUniqueId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/assistant/index/BaseItem;->uniqueId:Ljava/lang/String;

    return-void
.end method
