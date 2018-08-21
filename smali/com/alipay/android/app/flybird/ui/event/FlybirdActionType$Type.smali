.class public final enum Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;
.super Ljava/lang/Enum;
.source "FlybirdActionType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Alert:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Alipay:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Auth:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Back:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Bnvb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum CashierMain:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Continue:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Destroy:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Dismiss:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Exit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Feedback:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Log:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Login:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum None:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum OpenUrl:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum OpenWeb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Operation:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum ReLoad:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum ReadPhoneNum:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum ReadSms:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Redo:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum ReturnData:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Scan:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum ScanCard:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum ScanFace:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum SetResult:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Share:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum ShowTpl:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Submit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Swload:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum VerifyId:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum WapPay:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;


# instance fields
.field private mAction:Ljava/lang/String;

.field private params:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Submit"

    const-string/jumbo v2, "submit"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Submit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "None"

    const-string/jumbo v2, "none"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->None:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Redo"

    const-string/jumbo v2, "redo"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Redo:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Back"

    const-string/jumbo v2, "back"

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Back:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Bncb"

    const-string/jumbo v2, "bncb"

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Bnvb"

    const/4 v2, 0x5

    const-string/jumbo v3, "bnvb"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bnvb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "OpenUrl"

    const/4 v2, 0x6

    const-string/jumbo v3, "openurl"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->OpenUrl:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Dismiss"

    const/4 v2, 0x7

    const-string/jumbo v3, "dismiss"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Dismiss:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Exit"

    const/16 v2, 0x8

    const-string/jumbo v3, "exit"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Exit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "ReturnData"

    const/16 v2, 0x9

    const-string/jumbo v3, "returndata"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ReturnData:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Scan"

    const/16 v2, 0xa

    const-string/jumbo v3, "scan"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Scan:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Auth"

    const/16 v2, 0xb

    const-string/jumbo v3, "auth"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Auth:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Continue"

    const/16 v2, 0xc

    const-string/jumbo v3, "continue"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Continue:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Swload"

    const/16 v2, 0xd

    const-string/jumbo v3, "swload"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Swload:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "ScanCard"

    const/16 v2, 0xe

    const-string/jumbo v3, "scancard"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ScanCard:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "ReadSms"

    const/16 v2, 0xf

    const-string/jumbo v3, "readsms"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ReadSms:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "OpenWeb"

    const/16 v2, 0x10

    const-string/jumbo v3, "openweb"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->OpenWeb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "WapPay"

    const/16 v2, 0x11

    const-string/jumbo v3, "wappay"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->WapPay:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "ShowTpl"

    const/16 v2, 0x12

    const-string/jumbo v3, "showtpl"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ShowTpl:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "VerifyId"

    const/16 v2, 0x13

    const-string/jumbo v3, "verifyid"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->VerifyId:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "ScanFace"

    const/16 v2, 0x14

    const-string/jumbo v3, "scanface"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ScanFace:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "ReadPhoneNum"

    const/16 v2, 0x15

    const-string/jumbo v3, "readphonenum"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ReadPhoneNum:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "ReLoad"

    const/16 v2, 0x16

    const-string/jumbo v3, "reload"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ReLoad:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Share"

    const/16 v2, 0x17

    const-string/jumbo v3, "share"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Share:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Destroy"

    const/16 v2, 0x18

    const-string/jumbo v3, "destroy"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Destroy:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Operation"

    const/16 v2, 0x19

    const-string/jumbo v3, "operation"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Operation:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Login"

    const/16 v2, 0x1a

    const-string/jumbo v3, "login"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Login:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "CashierMain"

    const/16 v2, 0x1b

    const-string/jumbo v3, "cashiermain"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->CashierMain:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Alert"

    const/16 v2, 0x1c

    const-string/jumbo v3, "alert"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Alert:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Alipay"

    const/16 v2, 0x1d

    const-string/jumbo v3, "alipay"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Alipay:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Feedback"

    const/16 v2, 0x1e

    const-string/jumbo v3, "feedback"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Feedback:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "SetResult"

    const/16 v2, 0x1f

    const-string/jumbo v3, "setResult"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->SetResult:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Log"

    const/16 v2, 0x20

    const-string/jumbo v3, "log"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Log:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const/16 v0, 0x21

    new-array v0, v0, [Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Submit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->None:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Redo:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Back:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bnvb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->OpenUrl:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Dismiss:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Exit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ReturnData:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Scan:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Auth:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Continue:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Swload:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ScanCard:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ReadSms:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->OpenWeb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->WapPay:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ShowTpl:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->VerifyId:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ScanFace:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ReadPhoneNum:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ReLoad:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Share:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Destroy:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Operation:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Login:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->CashierMain:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Alert:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Alipay:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Feedback:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->SetResult:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Log:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->$VALUES:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->mAction:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;
    .locals 1

    const-class v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->$VALUES:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v0}, [Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    return-object v0
.end method


# virtual methods
.method public getParams()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->params:[Ljava/lang/String;

    return-object v0
.end method

.method public getmAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public setParams([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->params:[Ljava/lang/String;

    return-void
.end method
