.class public interface abstract Lcom/miui/video/galleryplus/galleryvideo/net/HttpInterceptor$Logger;
.super Ljava/lang/Object;
.source "HttpInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/net/HttpInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Logger"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/miui/video/galleryplus/galleryvideo/net/HttpInterceptor$Logger;

.field public static final LOG_ENALBED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/net/HttpInterceptor$Logger$1;

    invoke-direct {v0}, Lcom/miui/video/galleryplus/galleryvideo/net/HttpInterceptor$Logger$1;-><init>()V

    sput-object v0, Lcom/miui/video/galleryplus/galleryvideo/net/HttpInterceptor$Logger;->DEFAULT:Lcom/miui/video/galleryplus/galleryvideo/net/HttpInterceptor$Logger;

    return-void
.end method


# virtual methods
.method public abstract log(Ljava/lang/String;)V
.end method
