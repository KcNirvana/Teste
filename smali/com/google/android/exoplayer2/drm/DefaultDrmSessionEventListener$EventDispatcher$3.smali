.class Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;

.field final synthetic val$listener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$3;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$3;->val$listener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$3;->val$listener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;->onDrmKeysRestored()V

    return-void
.end method
