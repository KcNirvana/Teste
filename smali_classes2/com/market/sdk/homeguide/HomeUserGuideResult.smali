.class public Lcom/market/sdk/homeguide/HomeUserGuideResult;
.super Lcom/market/sdk/AbsParcelable;
.source "HomeUserGuideResult.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/market/sdk/homeguide/HomeUserGuideResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_INVALID_HOME_SCREEN:I = 0x1

.field public static final ERROR_INVALID_ICON_POS:I = 0x2

.field public static final OK:I


# instance fields
.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/market/sdk/homeguide/HomeUserGuideResult$1;

    invoke-direct {v0}, Lcom/market/sdk/homeguide/HomeUserGuideResult$1;-><init>()V

    sput-object v0, Lcom/market/sdk/homeguide/HomeUserGuideResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/market/sdk/AbsParcelable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/market/sdk/homeguide/HomeUserGuideResult;->errorCode:I

    iput p1, p0, Lcom/market/sdk/homeguide/HomeUserGuideResult;->errorCode:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/market/sdk/AbsParcelable;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/market/sdk/homeguide/HomeUserGuideResult;->errorCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/market/sdk/homeguide/HomeUserGuideResult;->errorCode:I

    return-void
.end method

.method public static of(I)Lcom/market/sdk/homeguide/HomeUserGuideResult;
    .locals 1

    new-instance v0, Lcom/market/sdk/homeguide/HomeUserGuideResult;

    invoke-direct {v0, p0}, Lcom/market/sdk/homeguide/HomeUserGuideResult;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/market/sdk/homeguide/HomeUserGuideResult;->errorCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/market/sdk/AbsParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/market/sdk/homeguide/HomeUserGuideResult;->errorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
