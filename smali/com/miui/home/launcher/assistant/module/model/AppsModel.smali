.class public Lcom/miui/home/launcher/assistant/module/model/AppsModel;
.super Ljava/lang/Object;
.source "AppsModel.java"


# instance fields
.field private mLastTimeUsed:J

.field private mPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/home/launcher/assistant/module/model/AppsModel;->mLastTimeUsed:J

    return-void
.end method


# virtual methods
.method public getLastTimeUsed()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/home/launcher/assistant/module/model/AppsModel;->mLastTimeUsed:J

    return-wide v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/AppsModel;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public setLastTimeUsed(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/home/launcher/assistant/module/model/AppsModel;->mLastTimeUsed:J

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/model/AppsModel;->mPkgName:Ljava/lang/String;

    return-void
.end method
