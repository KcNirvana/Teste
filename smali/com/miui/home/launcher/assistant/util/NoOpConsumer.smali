.class public Lcom/miui/home/launcher/assistant/util/NoOpConsumer;
.super Ljava/lang/Object;
.source "NoOpConsumer.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/miui/home/launcher/assistant/util/Consumer",
        "<TA;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
