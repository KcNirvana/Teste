.class final Lcom/ooyala/adtech/VASTParser$VASTHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/pulse/LogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/adtech/VASTParser$VASTHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ooyala/adtech/VASTParser$VASTHandler;


# direct methods
.method constructor <init>(Lcom/ooyala/adtech/VASTParser$VASTHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/adtech/VASTParser$VASTHandler$1;->a:Lcom/ooyala/adtech/VASTParser$VASTHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLog(Lcom/ooyala/pulse/LogItem;)V
    .locals 0

    invoke-virtual {p1}, Lcom/ooyala/pulse/LogItem;->getError()Lcom/ooyala/pulse/Error;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ooyala/pulse/Error;->toString()Ljava/lang/String;

    return-void
.end method
