.class public final Lcom/xiaomi/mistatistic/sdk/MiStatInterface$NetworkType;
.super Ljava/lang/Object;
.source "MiStatInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/MiStatInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NetworkType"
.end annotation


# static fields
.field public static final TYPE_2G:I = 0x1

.field public static final TYPE_3G:I = 0x2

.field public static final TYPE_4G:I = 0x4

.field public static final TYPE_ALL:I = 0x1f

.field public static final TYPE_ETHERNET:I = 0x10

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_WIFI:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/xiaomi/mistatistic/sdk/MiStatInterface;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/MiStatInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface$NetworkType;->this$0:Lcom/xiaomi/mistatistic/sdk/MiStatInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
