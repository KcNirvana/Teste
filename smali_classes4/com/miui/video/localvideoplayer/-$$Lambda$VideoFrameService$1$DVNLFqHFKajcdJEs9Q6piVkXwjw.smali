.class public final synthetic Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$DVNLFqHFKajcdJEs9Q6piVkXwjw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$DVNLFqHFKajcdJEs9Q6piVkXwjw;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$DVNLFqHFKajcdJEs9Q6piVkXwjw;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/video/localvideoplayer/VideoFrameService$1;->lambda$prepare$49(Ljava/lang/String;)V

    return-void
.end method
