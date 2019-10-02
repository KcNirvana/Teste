.class public Lcom/kaltura/playkit/LogEvent;
.super Ljava/lang/Object;
.source "LogEvent.java"

# interfaces
.implements Lcom/kaltura/playkit/PKEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaltura/playkit/LogEvent$Listener;,
        Lcom/kaltura/playkit/LogEvent$LogType;
    }
.end annotation


# instance fields
.field public final log:Ljava/lang/String;

.field public final request:Ljava/lang/String;

.field public final type:Lcom/kaltura/playkit/LogEvent$LogType;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/kaltura/playkit/LogEvent$LogType;->LogEvent:Lcom/kaltura/playkit/LogEvent$LogType;

    iput-object v0, p0, Lcom/kaltura/playkit/LogEvent;->type:Lcom/kaltura/playkit/LogEvent$LogType;

    iput-object p1, p0, Lcom/kaltura/playkit/LogEvent;->log:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/kaltura/playkit/LogEvent;->request:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/kaltura/playkit/LogEvent$LogType;->LogEvent:Lcom/kaltura/playkit/LogEvent$LogType;

    iput-object v0, p0, Lcom/kaltura/playkit/LogEvent;->type:Lcom/kaltura/playkit/LogEvent$LogType;

    iput-object p1, p0, Lcom/kaltura/playkit/LogEvent;->log:Ljava/lang/String;

    iput-object p2, p0, Lcom/kaltura/playkit/LogEvent;->request:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public eventType()Ljava/lang/Enum;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/LogEvent;->type:Lcom/kaltura/playkit/LogEvent$LogType;

    return-object v0
.end method
