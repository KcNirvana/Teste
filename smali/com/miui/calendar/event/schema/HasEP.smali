.class public Lcom/miui/calendar/event/schema/HasEP;
.super Ljava/lang/Object;
.source "HasEP.java"


# static fields
.field public static final HAS_EP_EVENT_TYPE_MASK:I = 0x1f

.field public static final TYPE_ANNIVERSARY:I = 0x8

.field public static final TYPE_BIRTHDAY:I = 0x7

.field public static final TYPE_COUNTDOWN:I = 0x9

.field public static final TYPE_CREDIT:I = 0x3

.field public static final TYPE_ELECTRICITY_BILL:I = 0xd

.field public static final TYPE_FLIGHT:I = 0xb

.field public static final TYPE_GAS_BILL:I = 0xe

.field public static final TYPE_HOLIDAY:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_HOTEL:I = 0xf

.field public static final TYPE_LOAN:I = 0x10

.field public static final TYPE_LOCAL:I = 0x0

.field public static final TYPE_MOVIE:I = 0x11

.field public static final TYPE_REMOTE_REMINDER:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_SUBSCRIBE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_THIRD_PARTY_V1:I = 0x6

.field public static final TYPE_THIRD_PARTY_V2:I = 0xa

.field public static final TYPE_TRAIN:I = 0xc

.field public static final TYPE_TRAVEL:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private hasExtendedProperties:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/calendar/event/schema/HasEP;->hasExtendedProperties:I

    return-void
.end method


# virtual methods
.method public getEventType()I
    .locals 1

    iget v0, p0, Lcom/miui/calendar/event/schema/HasEP;->hasExtendedProperties:I

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public getHasEP()I
    .locals 1

    iget v0, p0, Lcom/miui/calendar/event/schema/HasEP;->hasExtendedProperties:I

    return v0
.end method

.method public setEventType(I)V
    .locals 2

    iget v0, p0, Lcom/miui/calendar/event/schema/HasEP;->hasExtendedProperties:I

    and-int/lit8 v0, v0, -0x20

    and-int/lit8 v1, p1, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/calendar/event/schema/HasEP;->hasExtendedProperties:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "HasEP{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "hasExtendedProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/calendar/event/schema/HasEP;->hasExtendedProperties:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
