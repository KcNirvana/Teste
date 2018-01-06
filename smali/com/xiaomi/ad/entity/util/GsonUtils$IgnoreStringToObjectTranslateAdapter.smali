.class Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/ak;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ad/entity/util/GsonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IgnoreStringToObjectTranslateAdapter"
.end annotation


# instance fields
.field private final callerTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter;->callerTag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter;->callerTag:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public create(Lcom/a/a/k;Lcom/a/a/c/a;)Lcom/a/a/ai;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/k;",
            "Lcom/a/a/c/a",
            "<TT;>;)",
            "Lcom/a/a/ai",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1, p0, p2}, Lcom/a/a/k;->a(Lcom/a/a/ak;Lcom/a/a/c/a;)Lcom/a/a/ai;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter$1;-><init>(Lcom/xiaomi/ad/entity/util/GsonUtils$IgnoreStringToObjectTranslateAdapter;Lcom/a/a/ai;Lcom/a/a/c/a;)V

    return-object v1
.end method
