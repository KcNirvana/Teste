.class public Lcom/miui/systemAdSolution/landingPageV2/task/action/H5Action;
.super Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/systemAdSolution/landingPageV2/task/action/Action",
        "<",
        "Lcom/miui/systemAdSolution/landingPageV2/listener/IH5Listener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "H5Action"


# instance fields
.field private mH5Url:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/H5Action;->mH5Url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "H5Action"

    const-string v2, "H5Action parse parcel e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;Lcom/miui/systemAdSolution/landingPageV2/listener/IH5Listener;ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/systemAdSolution/landingPageV2/task/action/Action",
            "<",
            "Lcom/miui/systemAdSolution/landingPageV2/listener/IH5Listener;",
            ">.AdTrackInfo;",
            "Lcom/miui/systemAdSolution/landingPageV2/listener/IH5Listener;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;-><init>(Lcom/miui/systemAdSolution/landingPageV2/task/action/Action$AdTrackInfo;Landroid/os/IInterface;Z)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "H5Action"

    const-string v1, "h5 url is null!"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p4, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/H5Action;->mH5Url:Ljava/lang/String;

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

    const/4 v0, 0x2

    return v0
.end method

.method public getH5Url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/H5Action;->mH5Url:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic readBinder(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/systemAdSolution/landingPageV2/task/action/H5Action;->readBinder(Landroid/os/IBinder;)Lcom/miui/systemAdSolution/landingPageV2/listener/IH5Listener;

    move-result-object v0

    return-object v0
.end method

.method protected readBinder(Landroid/os/IBinder;)Lcom/miui/systemAdSolution/landingPageV2/listener/IH5Listener;
    .locals 1

    invoke-static {p1}, Lcom/miui/systemAdSolution/landingPageV2/listener/IH5Listener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/systemAdSolution/landingPageV2/listener/IH5Listener;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/miui/systemAdSolution/landingPageV2/task/action/Action;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPageV2/task/action/H5Action;->mH5Url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
