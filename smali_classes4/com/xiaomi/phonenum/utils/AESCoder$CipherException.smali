.class public Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;
.super Ljava/lang/Exception;
.source "AESCoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/phonenum/utils/AESCoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CipherException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x148921908361013bL


# instance fields
.field final synthetic this$0:Lcom/xiaomi/phonenum/utils/AESCoder;


# direct methods
.method public constructor <init>(Lcom/xiaomi/phonenum/utils/AESCoder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;->this$0:Lcom/xiaomi/phonenum/utils/AESCoder;

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/phonenum/utils/AESCoder;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;->this$0:Lcom/xiaomi/phonenum/utils/AESCoder;

    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/phonenum/utils/AESCoder;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/utils/AESCoder$CipherException;->this$0:Lcom/xiaomi/phonenum/utils/AESCoder;

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
