.class final Lcom/ooyala/pulse/Pulse$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/adtech/LogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/pulse/Pulse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ooyala/pulse/Pulse;


# direct methods
.method constructor <init>(Lcom/ooyala/pulse/Pulse;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/Pulse$2;->a:Lcom/ooyala/pulse/Pulse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLog(Lcom/ooyala/pulse/LogItem;)V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/Pulse$2;->a:Lcom/ooyala/pulse/Pulse;

    iget-object v0, v0, Lcom/ooyala/pulse/Pulse;->d:Lcom/ooyala/pulse/LogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/Pulse$2;->a:Lcom/ooyala/pulse/Pulse;

    iget-object v0, v0, Lcom/ooyala/pulse/Pulse;->d:Lcom/ooyala/pulse/LogListener;

    invoke-interface {v0, p1}, Lcom/ooyala/pulse/LogListener;->onLog(Lcom/ooyala/pulse/LogItem;)V

    :cond_0
    return-void
.end method
