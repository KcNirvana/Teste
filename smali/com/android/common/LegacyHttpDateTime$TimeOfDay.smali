.class Lcom/android/common/LegacyHttpDateTime$TimeOfDay;
.super Ljava/lang/Object;
.source "LegacyHttpDateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/LegacyHttpDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeOfDay"
.end annotation


# instance fields
.field hour:I

.field minute:I

.field second:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/common/LegacyHttpDateTime$TimeOfDay;->hour:I

    iput p2, p0, Lcom/android/common/LegacyHttpDateTime$TimeOfDay;->minute:I

    iput p3, p0, Lcom/android/common/LegacyHttpDateTime$TimeOfDay;->second:I

    return-void
.end method
