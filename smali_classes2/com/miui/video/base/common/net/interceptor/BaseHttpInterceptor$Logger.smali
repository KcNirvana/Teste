.class public interface abstract Lcom/miui/video/base/common/net/interceptor/BaseHttpInterceptor$Logger;
.super Ljava/lang/Object;
.source "BaseHttpInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/common/net/interceptor/BaseHttpInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Logger"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/miui/video/base/common/net/interceptor/BaseHttpInterceptor$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/base/common/net/interceptor/BaseHttpInterceptor$Logger$1;

    invoke-direct {v0}, Lcom/miui/video/base/common/net/interceptor/BaseHttpInterceptor$Logger$1;-><init>()V

    sput-object v0, Lcom/miui/video/base/common/net/interceptor/BaseHttpInterceptor$Logger;->DEFAULT:Lcom/miui/video/base/common/net/interceptor/BaseHttpInterceptor$Logger;

    return-void
.end method


# virtual methods
.method public abstract log(Ljava/lang/String;)V
.end method
