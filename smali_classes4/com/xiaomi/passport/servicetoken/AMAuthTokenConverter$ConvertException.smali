.class public Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter$ConvertException;
.super Ljava/lang/Exception;
.source "AMAuthTokenConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConvertException"
.end annotation


# instance fields
.field public final errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field public final errorMsg:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter$ConvertException;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    iput-object p2, p0, Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter$ConvertException;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;Ljava/lang/String;Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter$ConvertException;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;Ljava/lang/String;)V

    return-void
.end method
