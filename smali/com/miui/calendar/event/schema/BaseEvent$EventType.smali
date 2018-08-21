.class public Lcom/miui/calendar/event/schema/BaseEvent$EventType;
.super Ljava/lang/Object;
.source "BaseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/event/schema/BaseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventType"
.end annotation


# static fields
.field public static final TYPE_AGENDA:I = 0x1

.field public static final TYPE_BIRTHDAY:I = 0x2

.field public static final TYPE_CREDIT:I = 0x5

.field public static final TYPE_ELECTRICITY_BILL:I = 0x8

.field public static final TYPE_FLIGHT:I = 0x3

.field public static final TYPE_GAS_BILL:I = 0x9

.field public static final TYPE_HOTEL:I = 0x7

.field public static final TYPE_LOAN:I = 0xa

.field public static final TYPE_MOVIE:I = 0x6

.field public static final TYPE_TRAIN:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
