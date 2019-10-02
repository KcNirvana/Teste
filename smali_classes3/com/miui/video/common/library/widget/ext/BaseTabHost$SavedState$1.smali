.class final Lcom/miui/video/common/library/widget/ext/BaseTabHost$SavedState$1;
.super Ljava/lang/Object;
.source "BaseTabHost.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/library/widget/ext/BaseTabHost$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/video/common/library/widget/ext/BaseTabHost$SavedState;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/video/common/library/widget/ext/BaseTabHost$SavedState;
    .locals 1

    new-instance v0, Lcom/miui/video/common/library/widget/ext/BaseTabHost$SavedState;

    invoke-direct {v0, p1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/video/common/library/widget/ext/BaseTabHost$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/miui/video/common/library/widget/ext/BaseTabHost$SavedState;
    .locals 0

    new-array p1, p1, [Lcom/miui/video/common/library/widget/ext/BaseTabHost$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost$SavedState$1;->newArray(I)[Lcom/miui/video/common/library/widget/ext/BaseTabHost$SavedState;

    move-result-object p1

    return-object p1
.end method
