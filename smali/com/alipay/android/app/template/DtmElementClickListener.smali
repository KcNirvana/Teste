.class public Lcom/alipay/android/app/template/DtmElementClickListener;
.super Ljava/lang/Object;
.source "DtmElementClickListener.java"

# interfaces
.implements Lcom/alipay/android/app/template/OnTemplateClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "DtmElementClickListener"


# instance fields
.field private logTracer:Lcom/alipay/birdnest/api/BirdNestEngine$f;

.field private mBusinessId:Ljava/lang/String;

.field private mListener:Lcom/alipay/android/app/template/EventHandler;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/EventHandler;Ljava/lang/String;Lcom/alipay/birdnest/api/BirdNestEngine$f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->mListener:Lcom/alipay/android/app/template/EventHandler;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->mBusinessId:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->mListener:Lcom/alipay/android/app/template/EventHandler;

    iput-object p2, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->mBusinessId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->logTracer:Lcom/alipay/birdnest/api/BirdNestEngine$f;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/birdnest/api/BirdNestEngine$g;Lcom/alipay/birdnest/api/BirdNestEngine$f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->mListener:Lcom/alipay/android/app/template/EventHandler;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->mBusinessId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->i:Lcom/alipay/android/app/template/EventHandler;

    iput-object v0, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->mListener:Lcom/alipay/android/app/template/EventHandler;

    iget-object v0, p1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->mBusinessId:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->logTracer:Lcom/alipay/birdnest/api/BirdNestEngine$f;

    return-void
.end method


# virtual methods
.method public onAsyncEvent(Ljava/lang/Object;Ljava/lang/String;Lcom/alipay/android/app/template/ITemplateClickCallback;)Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->mListener:Lcom/alipay/android/app/template/EventHandler;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->mListener:Lcom/alipay/android/app/template/EventHandler;

    sget-object v1, Lcom/alipay/android/app/template/EventHandler$EventType;->ASYNC_EVENT:Lcom/alipay/android/app/template/EventHandler$EventType;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/android/app/template/EventHandler;->onAsyncEvent(Lcom/alipay/android/app/template/EventHandler$EventType;Ljava/lang/String;Lcom/alipay/android/app/template/ITemplateClickCallback;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DtmElementClickListener"

    invoke-static {v1, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onEvent(Ljava/lang/Object;Ljava/lang/String;Z)Z
    .locals 4

    const-string/jumbo v0, "DtmElementClickListener"

    const-string/jumbo v1, "onEvent"

    invoke-static {v0, v1}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->logTracer:Lcom/alipay/birdnest/api/BirdNestEngine$f;

    invoke-static {v0, p2}, Lcom/alipay/android/app/template/Tracker;->recordManual(Lcom/alipay/birdnest/api/BirdNestEngine$f;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->mListener:Lcom/alipay/android/app/template/EventHandler;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DtmElementClickListener"

    const-string/jumbo v1, "dtm click listener not null"

    invoke-static {v0, v1}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"param\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_1

    sget-object v0, Lcom/alipay/android/app/template/EventHandler$EventType;->CLICK:Lcom/alipay/android/app/template/EventHandler$EventType;

    :goto_1
    iget-object v2, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->mListener:Lcom/alipay/android/app/template/EventHandler;

    iget-object v3, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->mBusinessId:Ljava/lang/String;

    invoke-interface {v2, v0, v3, v1, p1}, Lcom/alipay/android/app/template/EventHandler;->onEvent(Lcom/alipay/android/app/template/EventHandler$EventType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_2
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DtmElementClickListener"

    invoke-static {v1, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/alipay/android/app/template/EventHandler$EventType;->GENERIC:Lcom/alipay/android/app/template/EventHandler$EventType;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v1, "DtmElementClickListener"

    invoke-static {v1, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public onGetCustomAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->mListener:Lcom/alipay/android/app/template/EventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->mListener:Lcom/alipay/android/app/template/EventHandler;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/template/EventHandler;->onGetCustomAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
