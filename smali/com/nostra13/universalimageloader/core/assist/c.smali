.class public Lcom/nostra13/universalimageloader/core/assist/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final biq:Ljava/lang/Throwable;

.field private final bir:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/c;->bir:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/assist/c;->biq:Ljava/lang/Throwable;

    return-void
.end method
