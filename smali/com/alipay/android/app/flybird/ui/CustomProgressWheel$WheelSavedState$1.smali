.class final Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState$1;
.super Ljava/lang/Object;
.source "CustomProgressWheel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;
    .locals 2

    new-instance v0, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcel;Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;
    .locals 1

    new-array v0, p1, [Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState$1;->newArray(I)[Lcom/alipay/android/app/flybird/ui/CustomProgressWheel$WheelSavedState;

    move-result-object v0

    return-object v0
.end method
