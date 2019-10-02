.class public Lcom/ooyala/pulse/Error$Core;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/pulse/Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Core"
.end annotation


# static fields
.field public static AD_NOT_READY:I = 0x16

.field public static ALREADY_TRACKED_EVENT:I = 0x8

.field public static CANNOT_TRACK_AFTER_ERROR:I = 0x9

.field public static INTERNAL_ERROR:I = 0x1e

.field public static INVALID_TRACKABLE:I = 0xc

.field public static INVALID_TRACKING_ERROR:I = 0x7

.field public static INVALID_VALUE:I = 0x11

.field public static LINEAR_PLAYBACK_POSITIONS_IGNORED:I = 0x12

.field public static NONLINEAR_PLAYBACK_POSITIONS_IGNORED:I = 0x13

.field public static NO_AD_RESPONSE:I = 0x14

.field public static OBJECT_PART_OF_ONGOING_REQUEST:I = 0x15

.field public static RECEIVED_INVALID_ATTRIBUTE_VALUE:I = 0xf

.field public static RECEIVED_INVALID_RESPONSE:I = 0xd

.field public static RECEIVED_INVALID_VALUE:I = 0xe

.field public static RECEIVED_MALFORMED_XML:I = 0x10

.field public static REPORTED_ERROR_AFTER_TRACKING_IMPRESSION:I = 0xa

.field public static REQUESTED_EXISTING_INSERTION_POINT_TYPES:I = 0x5

.field public static REQUESTED_EXISTING_PLAYBACK_POSITIONS:I = 0x6

.field public static REQUESTED_PASSBACK_AFTER_ERROR:I = 0x2

.field public static REQUESTED_PASSBACK_AFTER_IMPRESSION:I = 0x3

.field public static REQUESTED_PASSBACK_BEFORE_THIRD_PARTY_READY:I = 0x1

.field public static REQUESTED_PASSBACK_WHEN_NONE_AVAILABLE:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
