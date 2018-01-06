.class Lcom/xiaomi/h/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/xiaomi/h/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/h/f;

    invoke-direct {v0}, Lcom/xiaomi/h/f;-><init>()V

    sput-object v0, Lcom/xiaomi/h/f$a;->a:Lcom/xiaomi/h/f;

    return-void
.end method
