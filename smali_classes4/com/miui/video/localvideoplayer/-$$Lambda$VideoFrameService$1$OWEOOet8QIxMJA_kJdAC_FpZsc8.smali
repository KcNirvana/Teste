.class public final synthetic Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$OWEOOet8QIxMJA_kJdAC_FpZsc8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Landroid/view/Surface;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/view/Surface;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$OWEOOet8QIxMJA_kJdAC_FpZsc8;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$OWEOOet8QIxMJA_kJdAC_FpZsc8;->f$1:Landroid/view/Surface;

    iput p3, p0, Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$OWEOOet8QIxMJA_kJdAC_FpZsc8;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$OWEOOet8QIxMJA_kJdAC_FpZsc8;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$OWEOOet8QIxMJA_kJdAC_FpZsc8;->f$1:Landroid/view/Surface;

    iget v2, p0, Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$OWEOOet8QIxMJA_kJdAC_FpZsc8;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/miui/video/localvideoplayer/VideoFrameService$1;->lambda$setSurface$50(Ljava/lang/String;Landroid/view/Surface;I)V

    return-void
.end method
