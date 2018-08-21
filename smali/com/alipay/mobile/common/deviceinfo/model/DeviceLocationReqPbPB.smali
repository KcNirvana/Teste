.class public final Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;
.super Lcom/squareup/wire/Message;
.source "DeviceLocationReqPbPB.java"


# static fields
.field public static final DEFAULT_ACCESSWIRELESSNETTYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_ACCURACY:Ljava/lang/Double;

.field public static final DEFAULT_ALTITUDE:Ljava/lang/Double;

.field public static final DEFAULT_APDID:Ljava/lang/String; = ""

.field public static final DEFAULT_BLUETOOTHMAC:Ljava/lang/String; = ""

.field public static final DEFAULT_BLUETOOTHOPEN:Ljava/lang/Boolean;

.field public static final DEFAULT_CDMAINFOS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/deviceinfo/model/CDMAInfoPbPB;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CELLCONN:Ljava/lang/Boolean;

.field public static final DEFAULT_CELLTYPE:Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

.field public static final DEFAULT_CURRENTMOBILEOPERATOR:Ljava/lang/String; = ""

.field public static final DEFAULT_DIRECTION:Ljava/lang/Double;

.field public static final DEFAULT_EXTRAINFOS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationExtraInfoPbPB;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_GSMINFOS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_IMEI:Ljava/lang/String; = ""

.field public static final DEFAULT_IMSI:Ljava/lang/String; = ""

.field public static final DEFAULT_LATITUDE:Ljava/lang/Double;

.field public static final DEFAULT_LBSOPEN:Ljava/lang/Boolean;

.field public static final DEFAULT_LONGITUDE:Ljava/lang/Double;

.field public static final DEFAULT_OS:Ljava/lang/String; = ""

.field public static final DEFAULT_OSVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_QUERYLBS:Ljava/lang/Boolean;

.field public static final DEFAULT_SOURCE:Ljava/lang/String; = ""

.field public static final DEFAULT_SPEED:Ljava/lang/Double;

.field public static final DEFAULT_VIEWID:Ljava/lang/String; = ""

.field public static final DEFAULT_VOICEOVER:Ljava/lang/String; = ""

.field public static final DEFAULT_WIFICONN:Ljava/lang/Boolean;

.field public static final DEFAULT_WIFICONNECTBYPASSWORD:Ljava/lang/Boolean;

.field public static final DEFAULT_WIFIINFOS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG_ACCESSWIRELESSNETTYPE:I = 0x13

.field public static final TAG_ACCURACY:I = 0xe

.field public static final TAG_ALTITUDE:I = 0x9

.field public static final TAG_APDID:I = 0x1

.field public static final TAG_BLUETOOTHMAC:I = 0x14

.field public static final TAG_BLUETOOTHOPEN:I = 0x15

.field public static final TAG_CDMAINFOS:I = 0x1c

.field public static final TAG_CELLCONN:I = 0x19

.field public static final TAG_CELLTYPE:I = 0x1a

.field public static final TAG_CURRENTMOBILEOPERATOR:I = 0x12

.field public static final TAG_DIRECTION:I = 0xb

.field public static final TAG_EXTRAINFOS:I = 0x2

.field public static final TAG_GSMINFOS:I = 0x1b

.field public static final TAG_IMEI:I = 0x5

.field public static final TAG_IMSI:I = 0x6

.field public static final TAG_LATITUDE:I = 0xd

.field public static final TAG_LBSOPEN:I = 0x10

.field public static final TAG_LONGITUDE:I = 0xc

.field public static final TAG_OS:I = 0x4

.field public static final TAG_OSVERSION:I = 0x18

.field public static final TAG_QUERYLBS:I = 0x17

.field public static final TAG_SOURCE:I = 0x16

.field public static final TAG_SPEED:I = 0xa

.field public static final TAG_TIDINFO:I = 0x1d

.field public static final TAG_VIEWID:I = 0x7

.field public static final TAG_VOICEOVER:I = 0x8

.field public static final TAG_WIFICONN:I = 0xf

.field public static final TAG_WIFICONNECTBYPASSWORD:I = 0x11

.field public static final TAG_WIFIINFOS:I = 0x3


# instance fields
.field public accessWirelessNetType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x13
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public accuracy:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public altitude:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public apdid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public bluetoothMac:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x14
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public bluetoothOpen:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x15
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public cdmaInfos:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x1c
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/deviceinfo/model/CDMAInfoPbPB;",
            ">;"
        }
    .end annotation
.end field

.field public cellConn:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x19
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public cellType:Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1a
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public currentMobileOperator:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x12
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public direction:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public extraInfos:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationExtraInfoPbPB;",
            ">;"
        }
    .end annotation
.end field

.field public gsmInfos:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x1b
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/deviceinfo/model/GSMInfoPbPB;",
            ">;"
        }
    .end annotation
.end field

.field public imei:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public imsi:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public latitude:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public lbsOpen:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x10
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public longitude:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public os:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public osVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x18
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public queryLbs:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x17
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public source:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x16
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public speed:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public tidInfo:Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1d
    .end annotation
.end field

.field public viewId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public voiceOver:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public wifiConn:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public wifiConnectBypassword:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public wifiInfos:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/deviceinfo/model/WifiInfoPbPB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->DEFAULT_EXTRAINFOS:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->DEFAULT_WIFIINFOS:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->DEFAULT_ALTITUDE:Ljava/lang/Double;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->DEFAULT_SPEED:Ljava/lang/Double;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->DEFAULT_DIRECTION:Ljava/lang/Double;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->DEFAULT_LONGITUDE:Ljava/lang/Double;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->DEFAULT_LATITUDE:Ljava/lang/Double;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->DEFAULT_ACCURACY:Ljava/lang/Double;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->DEFAULT_WIFICONN:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->DEFAULT_LBSOPEN:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->DEFAULT_WIFICONNECTBYPASSWORD:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->DEFAULT_BLUETOOTHOPEN:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->DEFAULT_QUERYLBS:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->DEFAULT_CELLCONN:Ljava/lang/Boolean;

    sget-object v0, Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;->GSM:Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->DEFAULT_CELLTYPE:Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->DEFAULT_GSMINFOS:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->DEFAULT_CDMAINFOS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->apdid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->apdid:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->extraInfos:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->extraInfos:Ljava/util/List;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->wifiInfos:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->wifiInfos:Ljava/util/List;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->os:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->os:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->imei:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->imei:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->imsi:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->imsi:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->viewId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->viewId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->voiceOver:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->voiceOver:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->altitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->altitude:Ljava/lang/Double;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->speed:Ljava/lang/Double;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->speed:Ljava/lang/Double;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->direction:Ljava/lang/Double;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->direction:Ljava/lang/Double;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->longitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->longitude:Ljava/lang/Double;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->latitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->latitude:Ljava/lang/Double;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->accuracy:Ljava/lang/Double;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->accuracy:Ljava/lang/Double;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->wifiConn:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->wifiConn:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->lbsOpen:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->lbsOpen:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->wifiConnectBypassword:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->wifiConnectBypassword:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->currentMobileOperator:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->currentMobileOperator:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->accessWirelessNetType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->accessWirelessNetType:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->bluetoothMac:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->bluetoothMac:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->bluetoothOpen:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->bluetoothOpen:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->source:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->source:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->queryLbs:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->queryLbs:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->osVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->osVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->cellConn:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->cellConn:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->cellType:Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->cellType:Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->gsmInfos:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->gsmInfos:Ljava/util/List;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->cdmaInfos:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->cdmaInfos:Ljava/util/List;

    iget-object v0, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->tidInfo:Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->tidInfo:Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;

    goto/16 :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->apdid:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->apdid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->extraInfos:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->extraInfos:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->wifiInfos:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->wifiInfos:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->os:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->os:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->imei:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->imei:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->imsi:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->imsi:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->viewId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->viewId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->voiceOver:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->voiceOver:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->altitude:Ljava/lang/Double;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->altitude:Ljava/lang/Double;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->speed:Ljava/lang/Double;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->speed:Ljava/lang/Double;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->direction:Ljava/lang/Double;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->direction:Ljava/lang/Double;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->longitude:Ljava/lang/Double;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->longitude:Ljava/lang/Double;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->latitude:Ljava/lang/Double;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->latitude:Ljava/lang/Double;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->accuracy:Ljava/lang/Double;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->accuracy:Ljava/lang/Double;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->wifiConn:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->wifiConn:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->lbsOpen:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->lbsOpen:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->wifiConnectBypassword:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->wifiConnectBypassword:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->currentMobileOperator:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->currentMobileOperator:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->accessWirelessNetType:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->accessWirelessNetType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->bluetoothMac:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->bluetoothMac:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->bluetoothOpen:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->bluetoothOpen:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->source:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->source:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->queryLbs:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->queryLbs:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->osVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->osVersion:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->cellConn:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->cellConn:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->cellType:Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->cellType:Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->gsmInfos:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->gsmInfos:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->cdmaInfos:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->cdmaInfos:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->tidInfo:Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;

    iget-object v3, p1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->tidInfo:Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->apdid:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->extraInfos:Ljava/util/List;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->wifiInfos:Ljava/util/List;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->os:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->imei:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->imsi:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->viewId:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->voiceOver:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    check-cast p2, Ljava/lang/Double;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->altitude:Ljava/lang/Double;

    goto :goto_0

    :pswitch_9
    check-cast p2, Ljava/lang/Double;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->speed:Ljava/lang/Double;

    goto :goto_0

    :pswitch_a
    check-cast p2, Ljava/lang/Double;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->direction:Ljava/lang/Double;

    goto :goto_0

    :pswitch_b
    check-cast p2, Ljava/lang/Double;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->longitude:Ljava/lang/Double;

    goto :goto_0

    :pswitch_c
    check-cast p2, Ljava/lang/Double;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->latitude:Ljava/lang/Double;

    goto :goto_0

    :pswitch_d
    check-cast p2, Ljava/lang/Double;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->accuracy:Ljava/lang/Double;

    goto :goto_0

    :pswitch_e
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->wifiConn:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_f
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->lbsOpen:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_10
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->wifiConnectBypassword:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_11
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->currentMobileOperator:Ljava/lang/String;

    goto :goto_0

    :pswitch_12
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->accessWirelessNetType:Ljava/lang/String;

    goto :goto_0

    :pswitch_13
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->bluetoothMac:Ljava/lang/String;

    goto :goto_0

    :pswitch_14
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->bluetoothOpen:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_15
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->source:Ljava/lang/String;

    goto :goto_0

    :pswitch_16
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->queryLbs:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_17
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->osVersion:Ljava/lang/String;

    goto :goto_0

    :pswitch_18
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->cellConn:Ljava/lang/Boolean;

    goto/16 :goto_0

    :pswitch_19
    check-cast p2, Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->cellType:Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    goto/16 :goto_0

    :pswitch_1a
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->gsmInfos:Ljava/util/List;

    goto/16 :goto_0

    :pswitch_1b
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->cdmaInfos:Ljava/util/List;

    goto/16 :goto_0

    :pswitch_1c
    check-cast p2, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->tidInfo:Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method public hashCode()I
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->hashCode:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->apdid:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->apdid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->extraInfos:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->extraInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->wifiInfos:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->wifiInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->os:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->os:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->imei:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->imei:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->imsi:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->imsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->viewId:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->viewId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->voiceOver:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->voiceOver:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->altitude:Ljava/lang/Double;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->altitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->speed:Ljava/lang/Double;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->speed:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->direction:Ljava/lang/Double;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->direction:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->longitude:Ljava/lang/Double;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->longitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->latitude:Ljava/lang/Double;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->latitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->accuracy:Ljava/lang/Double;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->accuracy:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->wifiConn:Ljava/lang/Boolean;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->wifiConn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->lbsOpen:Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->lbsOpen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->wifiConnectBypassword:Ljava/lang/Boolean;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->wifiConnectBypassword:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->currentMobileOperator:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->currentMobileOperator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->accessWirelessNetType:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->accessWirelessNetType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_12
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->bluetoothMac:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->bluetoothMac:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_13
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->bluetoothOpen:Ljava/lang/Boolean;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->bluetoothOpen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_14
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->source:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->source:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_15
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->queryLbs:Ljava/lang/Boolean;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->queryLbs:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_16
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->osVersion:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->osVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->cellConn:Ljava/lang/Boolean;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->cellConn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_18
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->cellType:Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->cellType:Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->gsmInfos:Ljava/util/List;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->gsmInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1a
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->cdmaInfos:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->cdmaInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->tidInfo:Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->tidInfo:Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/deviceinfo/model/TidInfoPbPB;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;->hashCode:I

    :cond_2
    return v0

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto/16 :goto_1

    :cond_5
    move v0, v2

    goto/16 :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_3

    :cond_7
    move v0, v1

    goto/16 :goto_4

    :cond_8
    move v0, v1

    goto/16 :goto_5

    :cond_9
    move v0, v1

    goto/16 :goto_6

    :cond_a
    move v0, v1

    goto/16 :goto_7

    :cond_b
    move v0, v1

    goto/16 :goto_8

    :cond_c
    move v0, v1

    goto/16 :goto_9

    :cond_d
    move v0, v1

    goto/16 :goto_a

    :cond_e
    move v0, v1

    goto/16 :goto_b

    :cond_f
    move v0, v1

    goto/16 :goto_c

    :cond_10
    move v0, v1

    goto/16 :goto_d

    :cond_11
    move v0, v1

    goto/16 :goto_e

    :cond_12
    move v0, v1

    goto/16 :goto_f

    :cond_13
    move v0, v1

    goto/16 :goto_10

    :cond_14
    move v0, v1

    goto/16 :goto_11

    :cond_15
    move v0, v1

    goto/16 :goto_12

    :cond_16
    move v0, v1

    goto/16 :goto_13

    :cond_17
    move v0, v1

    goto/16 :goto_14

    :cond_18
    move v0, v1

    goto/16 :goto_15

    :cond_19
    move v0, v1

    goto/16 :goto_16

    :cond_1a
    move v0, v1

    goto/16 :goto_17

    :cond_1b
    move v0, v1

    goto/16 :goto_18

    :cond_1c
    move v0, v1

    goto :goto_19

    :cond_1d
    move v0, v2

    goto :goto_1a
.end method
