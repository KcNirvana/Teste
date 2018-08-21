.class public Lcom/alipay/android/phone/inside/log/f/h;
.super Lcom/alipay/android/phone/inside/log/f/a;
.source "HeaderField.java"


# static fields
.field private static b:I


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/phone/inside/log/f/h;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/log/f/a;-><init>()V

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/log/f/h;->c()V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "sp_inside_log"

    const-string/jumbo v1, "log_id"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/util/c/c;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "sp_inside_log"

    const-string/jumbo v2, "log_id"

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/util/c/c;->b(Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "inside"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HeaderField::getLogId > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/log/f/h;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/h;->c:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/log/util/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/h;->d:Ljava/lang/String;

    const-string/jumbo v0, "{{SUBMIT_TIME}}"

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/h;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/alipay/android/phone/inside/log/util/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/f/h;->e:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/h;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/h;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/h;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alipay/android/phone/inside/log/f/h;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/inside/log/f/h;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/log/f/h;->d:Ljava/lang/String;

    return-void
.end method
