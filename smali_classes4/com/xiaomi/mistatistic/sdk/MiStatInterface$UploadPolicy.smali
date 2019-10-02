.class public final Lcom/xiaomi/mistatistic/sdk/MiStatInterface$UploadPolicy;
.super Ljava/lang/Object;
.source "MiStatInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/MiStatInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UploadPolicy"
.end annotation


# static fields
.field public static final UPLOAD_POLICY_BATCH:I = 0x1

.field public static final UPLOAD_POLICY_INTERVAL:I


# instance fields
.field final synthetic this$0:Lcom/xiaomi/mistatistic/sdk/MiStatInterface;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/MiStatInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface$UploadPolicy;->this$0:Lcom/xiaomi/mistatistic/sdk/MiStatInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
