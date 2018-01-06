.class public Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;
.super Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;,
        Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/systemAdSolution/landingPageV2/task/action/Action",
        "<",
        "Lcom/miui/systemAdSolution/landingPageV2/listener/IDownloadListener;",
        ">;"
    }
.end annotation


# static fields
.field public static final DOWNLOAD_SOURCE_DEFAULT:I = 0x3

.field public static final DOWNLOAD_SOURCE_MIMARKET:I = 0x1

.field public static final DOWNLOAD_SOURCE_NATIVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DownloadAction"


# instance fields
.field private mDownloadInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;

.field private mDownloadSource:I

.field private mIsDownloadAutoStart:Z

.field private mIsDownloadByMiniCard:Z

.field private mMiniCardConfig:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;-><init>(Landroid/os/Parcel;)V

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->getRealOrFakePackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mPackageName:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mDownloadSource:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->parseIntToBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mIsDownloadByMiniCard:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->parseIntToBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mIsDownloadAutoStart:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->parseMiniCardConfig(Ljava/lang/String;)Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mMiniCardConfig:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->parseDownloadInfo(Ljava/lang/String;)Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mDownloadInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DownloadAction"

    const-string v2, "DownloadAction parse parcel e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;Lcom/miui/systemAdSolution/landingPageV2/listener/IDownloadListener;ZLjava/lang/String;IZZLcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/systemAdSolution/landingPageV2/task/action/Action",
            "<",
            "Lcom/miui/systemAdSolution/landingPageV2/listener/IDownloadListener;",
            ">.AdTrackInfo;",
            "Lcom/miui/systemAdSolution/landingPageV2/listener/IDownloadListener;",
            "Z",
            "Ljava/lang/String;",
            "IZZ",
            "Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;",
            "Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;-><init>(Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;Landroid/os/IInterface;Z)V

    if-eqz p8, :cond_0

    if-nez p9, :cond_1

    :cond_0
    const-string v0, "DownloadAction"

    const-string v1, "config info can\'t be null"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-object p4, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mPackageName:Ljava/lang/String;

    iput p5, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mDownloadSource:I

    iput-boolean p6, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mIsDownloadByMiniCard:Z

    iput-boolean p7, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mIsDownloadAutoStart:Z

    iput-object p8, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mMiniCardConfig:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;

    iput-object p9, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mDownloadInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;

    return-void
.end method

.method private static getRealOrFakePackageName()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FAKE_PACKAGE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generate fake packageName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/ad/internal/common/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final parseDownloadInfo(Ljava/lang/String;)Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;
    .locals 3

    :try_start_0
    const-class v0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;

    const-string v1, "DownloadAction"

    invoke-static {v0, p1, v1}, Lcom/xiaomi/ad/entity/util/GsonUtils;->fromJsonString(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/ad/entity/contract/IGsonEntity;

    move-result-object v0

    check-cast v0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "DownloadAction"

    const-string v2, "parse DownloadInfo e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final parseMiniCardConfig(Ljava/lang/String;)Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;
    .locals 3

    :try_start_0
    const-class v0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;

    const-string v1, "DownloadAction"

    invoke-static {v0, p1, v1}, Lcom/xiaomi/ad/entity/util/GsonUtils;->fromJsonString(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/ad/entity/contract/IGsonEntity;

    move-result-object v0

    check-cast v0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "DownloadAction"

    const-string v2, "parse MiniCardConfig e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getActionType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getDownloadInfo()Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mDownloadInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;

    return-object v0
.end method

.method public getDownloadSource()I
    .locals 1

    iget v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mDownloadSource:I

    return v0
.end method

.method public getMiniCardConfig()Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mMiniCardConfig:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isDownloadAutoStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mIsDownloadAutoStart:Z

    return v0
.end method

.method public isIsDownloadByMiniCard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mIsDownloadByMiniCard:Z

    return v0
.end method

.method protected bridge synthetic readBinder(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->readBinder(Landroid/os/IBinder;)Lcom/miui/systemAdSolution/landingPageV2/listener/IDownloadListener;

    move-result-object v0

    return-object v0
.end method

.method protected readBinder(Landroid/os/IBinder;)Lcom/miui/systemAdSolution/landingPageV2/listener/IDownloadListener;
    .locals 1

    invoke-static {p1}, Lcom/miui/systemAdSolution/landingPageV2/listener/IDownloadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/systemAdSolution/landingPageV2/listener/IDownloadListener;

    move-result-object v0

    return-object v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mDownloadSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mIsDownloadByMiniCard:Z

    invoke-virtual {p0, v0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->parseBooleanToInt(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mIsDownloadAutoStart:Z

    invoke-virtual {p0, v0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->parseBooleanToInt(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mMiniCardConfig:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;

    invoke-virtual {v0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$MiniCardConfig;->serialize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction;->mDownloadInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;

    invoke-virtual {v0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/DownloadAction$DownloadInfo;->serialize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
