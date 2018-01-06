.class public Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Action"


# instance fields
.field protected mAdTracKInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/systemAdSolution/landingPageV2/task/action/Action",
            "<TT;>.AdTrackInfo;"
        }
    .end annotation
.end field

.field protected mIsForwardWhenSuccess:Z

.field protected mListener:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$1;

    invoke-direct {v0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$1;-><init>()V

    sput-object v0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->getActionType()I

    move-result v0

    iput v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mType:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->getActionType()I

    move-result v0

    iput v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->parseAdTrackInfo(Ljava/lang/String;)Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mAdTracKInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->readBinder(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mListener:Landroid/os/IInterface;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->parseIntToBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mIsForwardWhenSuccess:Z

    :cond_0
    return-void
.end method

.method protected constructor <init>(Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;Landroid/os/IInterface;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/systemAdSolution/landingPageV2/task/action/Action",
            "<TT;>.AdTrackInfo;TT;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->getActionType()I

    move-result v0

    iput v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mType:I

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mAdTracKInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;

    iput-object p2, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mListener:Landroid/os/IInterface;

    iput-boolean p3, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mIsForwardWhenSuccess:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getActionType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdTracKInfo()Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/systemAdSolution/landingPageV2/task/action/Action",
            "<TT;>.AdTrackInfo;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mAdTracKInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;

    return-object v0
.end method

.method public getIsForwardWhenSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mIsForwardWhenSuccess:Z

    return v0
.end method

.method public getListener()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mListener:Landroid/os/IInterface;

    return-object v0
.end method

.method protected final parseAdTrackInfo(Ljava/lang/String;)Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/systemAdSolution/landingPageV2/task/action/Action",
            "<TT;>.AdTrackInfo;"
        }
    .end annotation

    :try_start_0
    const-class v0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;

    const-string v1, "Action"

    invoke-static {v0, p1, v1}, Lcom/xiaomi/ad/entity/util/GsonUtils;->fromJsonString(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/ad/entity/contract/IGsonEntity;

    move-result-object v0

    check-cast v0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Action"

    const-string v2, "parseAdTrackInfo e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected parseBooleanToInt(Z)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected parseIntToBoolean(I)Z
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected readBinder(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mAdTracKInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mListener:Landroid/os/IInterface;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-boolean v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mIsForwardWhenSuccess:Z

    invoke-virtual {p0, v0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->parseBooleanToInt(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->mAdTracKInfo:Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;

    invoke-virtual {v0}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;->serialize()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
