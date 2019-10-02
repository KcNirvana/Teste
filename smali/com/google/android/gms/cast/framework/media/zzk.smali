.class final Lcom/google/android/gms/cast/framework/media/zzk;
.super Ljava/util/TimerTask;


# instance fields
.field private final synthetic zzls:Lcom/google/android/gms/cast/framework/media/MediaQueue;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzk;->zzls:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzk;->zzls:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->zzbd()V

    return-void
.end method
