.class public abstract Lorg/videolan/libvlc/VLCEvent;
.super Ljava/lang/Object;
.source "VLCEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/VLCEvent$Listener;
    }
.end annotation


# instance fields
.field protected final arg1:J

.field protected final arg2:J

.field protected final arg3:J

.field protected final arg4:J

.field protected final argf1:F

.field protected final argstr:Ljava/lang/String;

.field public final type:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/videolan/libvlc/VLCEvent;->type:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/videolan/libvlc/VLCEvent;->arg1:J

    iput-wide v0, p0, Lorg/videolan/libvlc/VLCEvent;->arg2:J

    iput-wide v0, p0, Lorg/videolan/libvlc/VLCEvent;->arg3:J

    iput-wide v0, p0, Lorg/videolan/libvlc/VLCEvent;->arg4:J

    const/4 p1, 0x0

    iput p1, p0, Lorg/videolan/libvlc/VLCEvent;->argf1:F

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/videolan/libvlc/VLCEvent;->argstr:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(IF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/videolan/libvlc/VLCEvent;->type:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/videolan/libvlc/VLCEvent;->arg1:J

    iput-wide v0, p0, Lorg/videolan/libvlc/VLCEvent;->arg2:J

    iput-wide v0, p0, Lorg/videolan/libvlc/VLCEvent;->arg3:J

    iput-wide v0, p0, Lorg/videolan/libvlc/VLCEvent;->arg4:J

    iput p2, p0, Lorg/videolan/libvlc/VLCEvent;->argf1:F

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/videolan/libvlc/VLCEvent;->argstr:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/videolan/libvlc/VLCEvent;->type:I

    iput-wide p2, p0, Lorg/videolan/libvlc/VLCEvent;->arg1:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/videolan/libvlc/VLCEvent;->arg2:J

    iput-wide p1, p0, Lorg/videolan/libvlc/VLCEvent;->arg3:J

    iput-wide p1, p0, Lorg/videolan/libvlc/VLCEvent;->arg4:J

    const/4 p1, 0x0

    iput p1, p0, Lorg/videolan/libvlc/VLCEvent;->argf1:F

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/videolan/libvlc/VLCEvent;->argstr:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/videolan/libvlc/VLCEvent;->type:I

    iput-wide p2, p0, Lorg/videolan/libvlc/VLCEvent;->arg1:J

    iput-wide p4, p0, Lorg/videolan/libvlc/VLCEvent;->arg2:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/videolan/libvlc/VLCEvent;->arg3:J

    iput-wide p1, p0, Lorg/videolan/libvlc/VLCEvent;->arg4:J

    const/4 p1, 0x0

    iput p1, p0, Lorg/videolan/libvlc/VLCEvent;->argf1:F

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/videolan/libvlc/VLCEvent;->argstr:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(IJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/videolan/libvlc/VLCEvent;->type:I

    iput-wide p2, p0, Lorg/videolan/libvlc/VLCEvent;->arg1:J

    iput-wide p4, p0, Lorg/videolan/libvlc/VLCEvent;->arg2:J

    iput-wide p6, p0, Lorg/videolan/libvlc/VLCEvent;->arg3:J

    iput-wide p8, p0, Lorg/videolan/libvlc/VLCEvent;->arg4:J

    const/4 p1, 0x0

    iput p1, p0, Lorg/videolan/libvlc/VLCEvent;->argf1:F

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/videolan/libvlc/VLCEvent;->argstr:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(IJJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/videolan/libvlc/VLCEvent;->type:I

    iput-wide p2, p0, Lorg/videolan/libvlc/VLCEvent;->arg1:J

    iput-wide p4, p0, Lorg/videolan/libvlc/VLCEvent;->arg2:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/videolan/libvlc/VLCEvent;->arg3:J

    iput-wide p1, p0, Lorg/videolan/libvlc/VLCEvent;->arg4:J

    const/4 p1, 0x0

    iput p1, p0, Lorg/videolan/libvlc/VLCEvent;->argf1:F

    iput-object p6, p0, Lorg/videolan/libvlc/VLCEvent;->argstr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method release()V
    .locals 0

    return-void
.end method
