.class final Lcom/ooyala/adtech/h$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/adtech/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/adtech/h;->a(Lcom/ooyala/adtech/Ad;FJLcom/ooyala/adtech/AdRequester$AdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ooyala/adtech/Ad;

.field final synthetic b:Lcom/ooyala/adtech/Ad;

.field final synthetic c:Lcom/ooyala/adtech/AdRequester$AdListener;

.field final synthetic d:F

.field final synthetic e:J

.field final synthetic f:Z

.field final synthetic g:Lcom/ooyala/adtech/h;


# direct methods
.method constructor <init>(Lcom/ooyala/adtech/h;Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/AdRequester$AdListener;FJZ)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/adtech/h$3;->g:Lcom/ooyala/adtech/h;

    iput-object p2, p0, Lcom/ooyala/adtech/h$3;->a:Lcom/ooyala/adtech/Ad;

    iput-object p3, p0, Lcom/ooyala/adtech/h$3;->b:Lcom/ooyala/adtech/Ad;

    iput-object p4, p0, Lcom/ooyala/adtech/h$3;->c:Lcom/ooyala/adtech/AdRequester$AdListener;

    iput p5, p0, Lcom/ooyala/adtech/h$3;->d:F

    iput-wide p6, p0, Lcom/ooyala/adtech/h$3;->e:J

    iput-boolean p8, p0, Lcom/ooyala/adtech/h$3;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ooyala/adtech/Ad;)V
    .locals 2

    iget-object v0, p0, Lcom/ooyala/adtech/h$3;->a:Lcom/ooyala/adtech/Ad;

    iget-object v0, v0, Lcom/ooyala/adtech/Ad;->v:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ooyala/adtech/h$3;->a:Lcom/ooyala/adtech/Ad;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/ooyala/adtech/h;->a(Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/Ad;Z)V

    iget-object p1, p0, Lcom/ooyala/adtech/h$3;->b:Lcom/ooyala/adtech/Ad;

    iget-object v0, p0, Lcom/ooyala/adtech/h$3;->a:Lcom/ooyala/adtech/Ad;

    invoke-static {p1, v0}, Lcom/ooyala/adtech/h;->a(Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/Ad;)V

    iget-object p1, p0, Lcom/ooyala/adtech/h$3;->a:Lcom/ooyala/adtech/Ad;

    iput-boolean v1, p1, Lcom/ooyala/adtech/Ad;->u:Z

    iget-object p1, p0, Lcom/ooyala/adtech/h$3;->a:Lcom/ooyala/adtech/Ad;

    iget-object p1, p1, Lcom/ooyala/adtech/Ad;->a:Lcom/ooyala/adtech/Ad$Type;

    sget-object v0, Lcom/ooyala/adtech/Ad$Type;->INVENTORY:Lcom/ooyala/adtech/Ad$Type;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ooyala/adtech/h$3;->a:Lcom/ooyala/adtech/Ad;

    invoke-virtual {p1}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object p1

    sget-object v0, Lcom/ooyala/adtech/TrackingEvent;->AD_IMPRESSION:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {p1, v0}, Lcom/ooyala/adtech/TrackingEvents;->b(Lcom/ooyala/adtech/TrackingEvent;)V

    :cond_0
    iget-object p1, p0, Lcom/ooyala/adtech/h$3;->c:Lcom/ooyala/adtech/AdRequester$AdListener;

    iget-object v0, p0, Lcom/ooyala/adtech/h$3;->a:Lcom/ooyala/adtech/Ad;

    invoke-interface {p1, v0}, Lcom/ooyala/adtech/AdRequester$AdListener;->onSuccess(Lcom/ooyala/adtech/Ad;)V

    return-void
.end method

.method public final a(Lcom/ooyala/adtech/Ad;Lcom/ooyala/adtech/Error;Lcom/ooyala/adtech/TrackingError$a;)V
    .locals 8

    iget-object v0, p0, Lcom/ooyala/adtech/h$3;->a:Lcom/ooyala/adtech/Ad;

    iget-object v0, v0, Lcom/ooyala/adtech/Ad;->v:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lcom/ooyala/adtech/h$3;->d:F

    iget-wide v2, p0, Lcom/ooyala/adtech/h$3;->e:J

    invoke-static {v0, v2, v3}, Lcom/ooyala/adtech/h;->a(FJ)F

    move-result v0

    iget-object v2, p0, Lcom/ooyala/adtech/h$3;->g:Lcom/ooyala/adtech/h;

    iget-boolean v2, v2, Lcom/ooyala/adtech/h;->cancelled:Z

    if-nez v2, :cond_2

    float-to-double v2, v0

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ooyala/adtech/TrackingError$a;->j:Lcom/ooyala/adtech/TrackingError$a;

    if-ne p3, v0, :cond_1

    sget-object p3, Lcom/ooyala/adtech/h;->f:Lcom/ooyala/adtech/Tracker;

    sget-object v0, Lcom/ooyala/adtech/TrackingError$PulseError;->WRAPPER_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    iget-object v2, p0, Lcom/ooyala/adtech/h$3;->b:Lcom/ooyala/adtech/Ad;

    iget-object v3, p0, Lcom/ooyala/adtech/h$3;->b:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v3}, Lcom/ooyala/adtech/Ad;->getCandidateNum()I

    move-result v3

    invoke-virtual {p3, v0, v2, v3}, Lcom/ooyala/adtech/Tracker;->reportPulseError(Lcom/ooyala/adtech/TrackingError$PulseError;Lcom/ooyala/adtech/Ad;I)V

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/ooyala/adtech/TrackingError$a;->k:Lcom/ooyala/adtech/TrackingError$a;

    if-ne p3, v0, :cond_5

    sget-object p3, Lcom/ooyala/adtech/h;->f:Lcom/ooyala/adtech/Tracker;

    sget-object v0, Lcom/ooyala/adtech/TrackingError$PulseError;->WRAPPER_TIMEOUT_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    iget-object v2, p0, Lcom/ooyala/adtech/h$3;->b:Lcom/ooyala/adtech/Ad;

    iget-object v3, p0, Lcom/ooyala/adtech/h$3;->b:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v3}, Lcom/ooyala/adtech/Ad;->getCandidateNum()I

    move-result v3

    invoke-virtual {p3, v0, v2, v3}, Lcom/ooyala/adtech/Tracker;->reportPulseError(Lcom/ooyala/adtech/TrackingError$PulseError;Lcom/ooyala/adtech/Ad;I)V

    goto :goto_2

    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/ooyala/adtech/h$3;->a:Lcom/ooyala/adtech/Ad;

    iget-object p3, p3, Lcom/ooyala/adtech/Ad;->v:Ljava/util/List;

    iget-object v0, p0, Lcom/ooyala/adtech/h$3;->a:Lcom/ooyala/adtech/Ad;

    iget-object v0, v0, Lcom/ooyala/adtech/Ad;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->clear()V

    iget-object p3, p0, Lcom/ooyala/adtech/h$3;->g:Lcom/ooyala/adtech/h;

    iget-boolean p3, p3, Lcom/ooyala/adtech/h;->cancelled:Z

    if-eqz p3, :cond_3

    sget-object p3, Lcom/ooyala/adtech/h;->f:Lcom/ooyala/adtech/Tracker;

    sget-object v0, Lcom/ooyala/adtech/TrackingError$PulseError;->UNDEFINED_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    iget-object v2, p0, Lcom/ooyala/adtech/h$3;->b:Lcom/ooyala/adtech/Ad;

    iget-object v3, p0, Lcom/ooyala/adtech/h$3;->b:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v3}, Lcom/ooyala/adtech/Ad;->getCandidateNum()I

    move-result v3

    invoke-virtual {p3, v0, v2, v3}, Lcom/ooyala/adtech/Tracker;->reportPulseError(Lcom/ooyala/adtech/TrackingError$PulseError;Lcom/ooyala/adtech/Ad;I)V

    goto :goto_2

    :cond_3
    sget-object p3, Lcom/ooyala/adtech/h;->f:Lcom/ooyala/adtech/Tracker;

    iget-boolean v0, p0, Lcom/ooyala/adtech/h$3;->f:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/ooyala/adtech/TrackingError$PulseError;->PASSBACK_TIMEOUT_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/ooyala/adtech/TrackingError$PulseError;->WRAPPER_TIMEOUT_ERROR:Lcom/ooyala/adtech/TrackingError$PulseError;

    :goto_1
    iget-object v2, p0, Lcom/ooyala/adtech/h$3;->b:Lcom/ooyala/adtech/Ad;

    iget-object v3, p0, Lcom/ooyala/adtech/h$3;->b:Lcom/ooyala/adtech/Ad;

    invoke-virtual {v3}, Lcom/ooyala/adtech/Ad;->getCandidateNum()I

    move-result v3

    invoke-virtual {p3, v0, v2, v3}, Lcom/ooyala/adtech/Tracker;->reportPulseError(Lcom/ooyala/adtech/TrackingError$PulseError;Lcom/ooyala/adtech/Ad;I)V

    :cond_5
    :goto_2
    iget-object p3, p0, Lcom/ooyala/adtech/h$3;->a:Lcom/ooyala/adtech/Ad;

    iget-object p3, p3, Lcom/ooyala/adtech/Ad;->v:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ooyala/adtech/Ad;

    invoke-virtual {p1}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v0

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->i:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/TrackingEvents;->d(Lcom/ooyala/adtech/TrackingEvent;)V

    invoke-virtual {p3}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object v1

    sget-object v2, Lcom/ooyala/adtech/TrackingEvent;->i:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v3, Lcom/ooyala/adtech/j;

    invoke-direct {v3, v2}, Lcom/ooyala/adtech/j;-><init>(Lcom/ooyala/adtech/TrackingEvent;)V

    invoke-virtual {v0, v1, v3, v3}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvents;Lcom/ooyala/adtech/j;Lcom/ooyala/adtech/j;)V

    iget-object v0, p3, Lcom/ooyala/adtech/Ad;->a:Lcom/ooyala/adtech/Ad$Type;

    sget-object v1, Lcom/ooyala/adtech/Ad$Type;->INVENTORY:Lcom/ooyala/adtech/Ad$Type;

    if-eq v0, v1, :cond_6

    invoke-virtual {p3}, Lcom/ooyala/adtech/Ad;->getTrackingEvents()Lcom/ooyala/adtech/TrackingEvents;

    move-result-object p3

    iget-object p1, p1, Lcom/ooyala/adtech/Ad;->F:Lcom/ooyala/adtech/TrackingEvents;

    sget-object v0, Lcom/ooyala/adtech/TrackingEvent;->i:Lcom/ooyala/adtech/TrackingEvent;

    sget-object v1, Lcom/ooyala/adtech/TrackingEvent;->AD_IMPRESSION:Lcom/ooyala/adtech/TrackingEvent;

    invoke-virtual {p3, p1, v0, v1}, Lcom/ooyala/adtech/TrackingEvents;->a(Lcom/ooyala/adtech/TrackingEvents;Lcom/ooyala/adtech/TrackingEvent;Lcom/ooyala/adtech/TrackingEvent;)V

    :cond_6
    iget-object v2, p0, Lcom/ooyala/adtech/h$3;->g:Lcom/ooyala/adtech/h;

    iget-object v3, p0, Lcom/ooyala/adtech/h$3;->a:Lcom/ooyala/adtech/Ad;

    iget v4, p0, Lcom/ooyala/adtech/h$3;->d:F

    iget-wide v5, p0, Lcom/ooyala/adtech/h$3;->e:J

    new-instance v7, Lcom/ooyala/adtech/h$3$1;

    invoke-direct {v7, p0, p2}, Lcom/ooyala/adtech/h$3$1;-><init>(Lcom/ooyala/adtech/h$3;Lcom/ooyala/adtech/Error;)V

    invoke-virtual/range {v2 .. v7}, Lcom/ooyala/adtech/h;->a(Lcom/ooyala/adtech/Ad;FJLcom/ooyala/adtech/AdRequester$AdListener;)V

    return-void
.end method
