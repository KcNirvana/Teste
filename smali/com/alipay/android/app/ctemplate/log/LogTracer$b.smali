.class public Lcom/alipay/android/app/ctemplate/log/LogTracer$b;
.super Ljava/lang/Object;
.source "LogTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ctemplate/log/LogTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field final synthetic e:Lcom/alipay/android/app/ctemplate/log/LogTracer;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/ctemplate/log/LogTracer;Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ctemplate/log/LogTracer$b;->e:Lcom/alipay/android/app/ctemplate/log/LogTracer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alipay/android/app/ctemplate/log/LogTracer$b;->a:Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    iput-object p3, p0, Lcom/alipay/android/app/ctemplate/log/LogTracer$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/app/ctemplate/log/LogTracer$b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/android/app/ctemplate/log/LogTracer$b;->d:Ljava/lang/String;

    return-void
.end method
