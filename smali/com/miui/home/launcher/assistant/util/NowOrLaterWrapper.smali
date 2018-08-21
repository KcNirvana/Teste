.class public abstract Lcom/miui/home/launcher/assistant/util/NowOrLaterWrapper;
.super Ljava/lang/Object;
.source "NowOrLaterWrapper.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/util/NowOrLater;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/miui/home/launcher/assistant/util/NowOrLater",
        "<TB;>;"
    }
.end annotation


# instance fields
.field private final mWrapped:Lcom/miui/home/launcher/assistant/util/NowOrLater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/assistant/util/NowOrLater",
            "<TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/assistant/util/NowOrLater;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/assistant/util/NowOrLater",
            "<TA;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/util/NowOrLaterWrapper;->mWrapped:Lcom/miui/home/launcher/assistant/util/NowOrLater;

    return-void
.end method


# virtual methods
.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation
.end method

.method public getLater(Lcom/miui/home/launcher/assistant/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/assistant/util/Consumer",
            "<-TB;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/NowOrLaterWrapper;->mWrapped:Lcom/miui/home/launcher/assistant/util/NowOrLater;

    new-instance v1, Lcom/miui/home/launcher/assistant/util/NowOrLaterWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/assistant/util/NowOrLaterWrapper$1;-><init>(Lcom/miui/home/launcher/assistant/util/NowOrLaterWrapper;Lcom/miui/home/launcher/assistant/util/Consumer;)V

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/assistant/util/NowOrLater;->getLater(Lcom/miui/home/launcher/assistant/util/Consumer;)V

    return-void
.end method

.method public getNow()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/NowOrLaterWrapper;->mWrapped:Lcom/miui/home/launcher/assistant/util/NowOrLater;

    invoke-interface {v0}, Lcom/miui/home/launcher/assistant/util/NowOrLater;->getNow()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/util/NowOrLaterWrapper;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public haveNow()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/NowOrLaterWrapper;->mWrapped:Lcom/miui/home/launcher/assistant/util/NowOrLater;

    invoke-interface {v0}, Lcom/miui/home/launcher/assistant/util/NowOrLater;->haveNow()Z

    move-result v0

    return v0
.end method
