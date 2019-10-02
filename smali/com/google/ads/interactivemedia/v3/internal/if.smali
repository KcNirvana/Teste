.class public Lcom/google/ads/interactivemedia/v3/internal/if;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;
.implements Lcom/google/ads/interactivemedia/v3/internal/ji$b;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/jd;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/ih;

.field private final d:Lcom/google/ads/interactivemedia/v3/api/player/VolumeProvider;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/jd;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/ih;Lcom/google/ads/interactivemedia/v3/api/player/VolumeProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/if;->e:Z

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/if;->a:Lcom/google/ads/interactivemedia/v3/internal/jd;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/if;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/if;->c:Lcom/google/ads/interactivemedia/v3/internal/ih;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/if;->d:Lcom/google/ads/interactivemedia/v3/api/player/VolumeProvider;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getDuration()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/if;->b(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->timeupdate:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/if;->a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/if;->a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/Object;)V

    return-void
.end method

.method a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jc;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->videoDisplay:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/if;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/jc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jc$b;Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/if;->a:Lcom/google/ads/interactivemedia/v3/internal/jd;

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/jd;->b(Lcom/google/ads/interactivemedia/v3/internal/jc;)V

    return-void
.end method

.method b(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/if;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTime()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/if;->d:Lcom/google/ads/interactivemedia/v3/api/player/VolumeProvider;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VolumeProvider;->getVolume()I

    move-result p1

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/o;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/o$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/o$a;->volumePercentage(I)Lcom/google/ads/interactivemedia/v3/impl/data/o$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/o$a;->build()Lcom/google/ads/interactivemedia/v3/impl/data/o;

    move-result-object p1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->start:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/if;->a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/if;->e:Z

    :cond_0
    return-void
.end method

.method public onEnded()V
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->end:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/if;->a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;)V

    return-void
.end method

.method public onError()V
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->error:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/if;->a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;)V

    return-void
.end method

.method public onLoaded()V
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->loaded:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/if;->a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/if;->c:Lcom/google/ads/interactivemedia/v3/internal/ih;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ih;->c()V

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->pause:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/if;->a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;)V

    return-void
.end method

.method public onPlay()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/if;->e:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/if;->c:Lcom/google/ads/interactivemedia/v3/internal/ih;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ih;->b()V

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->play:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/if;->a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;)V

    return-void
.end method

.method public onVolumeChanged(I)V
    .locals 1

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/o;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/o$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/o$a;->volumePercentage(I)Lcom/google/ads/interactivemedia/v3/impl/data/o$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/o$a;->build()Lcom/google/ads/interactivemedia/v3/impl/data/o;

    move-result-object p1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->volumeChange:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/if;->a(Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/Object;)V

    return-void
.end method
