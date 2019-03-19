.class Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;
.super Ljava/lang/Object;
.source "MorphoPanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/MorphoPanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CaptureInfo"
.end annotation


# instance fields
.field mId:I

.field mStatus:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;->mId:I

    iput p2, p0, Lcom/android/camera/module/MorphoPanoramaModule$CaptureInfo;->mStatus:I

    return-void
.end method
