.class public Lcom/miui/video/base/model/MediaData$Program;
.super Ljava/lang/Object;
.source "MediaData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/model/MediaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Program"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x20L


# instance fields
.field public end_time:J

.field public name:Ljava/lang/String;

.field public playback:Z

.field public start_time:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/base/model/MediaData$Program;->playback:Z

    return-void
.end method
