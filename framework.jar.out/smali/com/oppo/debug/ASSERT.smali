.class public Lcom/oppo/debug/ASSERT;
.super Ljava/lang/Object;
.source "ASSERT.java"


# static fields
.field private static final ASSERT_CACHE_PATH:Ljava/lang/String; = "/cache/admin/assertlog"

.field private static final ASSERT_ENABLE_PROP:Ljava/lang/String; = "persist.sys.assert.enable"

.field private static final ASSERT_PANIC_PROP:Ljava/lang/String; = "persist.sys.assert.panic"

.field private static final ASSERT_STATE:Ljava/lang/String; = "persist.sys.assert.state"

.field private static final FILTEDPROC_PROP:Ljava/lang/String; = "persist.assert.filtedproc"

.field private static final IS_EMPTY:I = 0x1

.field private static final IS_GZIPPED:I = 0x4

.field private static final IS_TEXT:I = 0x2

.field private static final MAX_CONTEXT_LENGTH:I = 0x14

.field private static final TAG:Ljava/lang/String; = "java.lang.ASSERT"

.field private static mFunctionProxy:Landroid/os/OppoAssertTip;

.field private static final rt:Ljava/lang/Runtime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    sput-object v0, Lcom/oppo/debug/ASSERT;->rt:Ljava/lang/Runtime;

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/debug/ASSERT;->mFunctionProxy:Landroid/os/OppoAssertTip;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static ASSERT(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "condition"    # Z

    .prologue
    .line 76
    invoke-static {p0, p1}, Lcom/oppo/debug/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    .line 77
    return-void
.end method

.method public static ASSERT(Z)V
    .locals 0
    .param p0, "condition"    # Z

    .prologue
    .line 72
    invoke-static {p0}, Lcom/oppo/debug/ASSERT;->assertTrue(Z)V

    .line 73
    return-void
.end method

.method public static ASSERTEXCEPTION(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    invoke-static {p0}, Lcom/oppo/debug/ASSERT;->fail(Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method

.method private static assertEquals(BB)V
    .locals 1
    .param p0, "expected"    # B
    .param p1, "actual"    # B

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oppo/debug/ASSERT;->assertEquals(Ljava/lang/String;BB)V

    .line 313
    return-void
.end method

.method private static assertEquals(CC)V
    .locals 1
    .param p0, "expected"    # C
    .param p1, "actual"    # C

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oppo/debug/ASSERT;->assertEquals(Ljava/lang/String;CC)V

    .line 328
    return-void
.end method

.method private static assertEquals(DDD)V
    .locals 8
    .param p0, "expected"    # D
    .param p2, "actual"    # D
    .param p4, "delta"    # D

    .prologue
    .line 239
    const/4 v1, 0x0

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v1 .. v7}, Lcom/oppo/debug/ASSERT;->assertEquals(Ljava/lang/String;DDD)V

    .line 240
    return-void
.end method

.method private static assertEquals(FFF)V
    .locals 1
    .param p0, "expected"    # F
    .param p1, "actual"    # F
    .param p2, "delta"    # F

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/oppo/debug/ASSERT;->assertEquals(Ljava/lang/String;FFF)V

    .line 267
    return-void
.end method

.method private static assertEquals(II)V
    .locals 1
    .param p0, "expected"    # I
    .param p1, "actual"    # I

    .prologue
    .line 358
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oppo/debug/ASSERT;->assertEquals(Ljava/lang/String;II)V

    .line 359
    return-void
.end method

.method private static assertEquals(JJ)V
    .locals 2
    .param p0, "expected"    # J
    .param p2, "actual"    # J

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/oppo/debug/ASSERT;->assertEquals(Ljava/lang/String;JJ)V

    .line 282
    return-void
.end method

.method private static assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oppo/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;BB)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # B
    .param p2, "actual"    # B

    .prologue
    .line 305
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p2}, Ljava/lang/Byte;-><init>(B)V

    invoke-static {p0, v0, v1}, Lcom/oppo/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 306
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;CC)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # C
    .param p2, "actual"    # C

    .prologue
    .line 320
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p2}, Ljava/lang/Character;-><init>(C)V

    invoke-static {p0, v0, v1}, Lcom/oppo/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;DDD)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # D
    .param p3, "actual"    # D
    .param p5, "delta"    # D

    .prologue
    .line 224
    invoke-static {}, Lcom/oppo/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    sub-double v0, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, p5

    if-lez v0, :cond_0

    .line 229
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p3, p4}, Ljava/lang/Double;-><init>(D)V

    invoke-static {p0, v0, v1}, Lcom/oppo/debug/ASSERT;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static assertEquals(Ljava/lang/String;FFF)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # F
    .param p2, "actual"    # F
    .param p3, "delta"    # F

    .prologue
    .line 251
    invoke-static {}, Lcom/oppo/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    cmpl-float v0, p1, p2

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p2}, Ljava/lang/Float;-><init>(F)V

    invoke-static {p0, v0, v1}, Lcom/oppo/debug/ASSERT;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    invoke-static {}, Lcom/oppo/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    sub-float v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p3

    if-lez v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p2}, Ljava/lang/Float;-><init>(F)V

    invoke-static {p0, v0, v1}, Lcom/oppo/debug/ASSERT;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static assertEquals(Ljava/lang/String;II)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # I
    .param p2, "actual"    # I

    .prologue
    .line 351
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v0, v1}, Lcom/oppo/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 352
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;JJ)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # J
    .param p3, "actual"    # J

    .prologue
    .line 274
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p3, p4}, Ljava/lang/Long;-><init>(J)V

    invoke-static {p0, v0, v1}, Lcom/oppo/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 275
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .prologue
    .line 172
    invoke-static {}, Lcom/oppo/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/oppo/debug/ASSERT;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static assertEquals(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oppo/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-static {}, Lcom/oppo/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    :cond_2
    new-instance v0, Lcom/oppo/debug/ASSERTComparisonCompactor;

    const/16 v1, 0x14

    invoke-direct {v0, v1, p1, p2}, Lcom/oppo/debug/ASSERTComparisonCompactor;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/oppo/debug/ASSERTComparisonCompactor;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/debug/ASSERT;->fail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static assertEquals(Ljava/lang/String;SS)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # S
    .param p2, "actual"    # S

    .prologue
    .line 336
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    new-instance v1, Ljava/lang/Short;

    invoke-direct {v1, p2}, Ljava/lang/Short;-><init>(S)V

    invoke-static {p0, v0, v1}, Lcom/oppo/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 337
    return-void
.end method

.method private static assertEquals(Ljava/lang/String;ZZ)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Z
    .param p2, "actual"    # Z

    .prologue
    .line 290
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/oppo/debug/ASSERT;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 291
    return-void
.end method

.method private static assertEquals(SS)V
    .locals 1
    .param p0, "expected"    # S
    .param p1, "actual"    # S

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oppo/debug/ASSERT;->assertEquals(Ljava/lang/String;SS)V

    .line 344
    return-void
.end method

.method private static assertEquals(ZZ)V
    .locals 1
    .param p0, "expected"    # Z
    .param p1, "actual"    # Z

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oppo/debug/ASSERT;->assertEquals(Ljava/lang/String;ZZ)V

    .line 298
    return-void
.end method

.method private static assertFalse(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "condition"    # Z

    .prologue
    .line 155
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/oppo/debug/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    .line 156
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static assertFalse(Z)V
    .locals 1
    .param p0, "condition"    # Z

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oppo/debug/ASSERT;->assertFalse(Ljava/lang/String;Z)V

    .line 164
    return-void
.end method

.method private static assertNotNull(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 365
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oppo/debug/ASSERT;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 366
    return-void
.end method

.method private static assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 373
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/oppo/debug/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    .line 374
    return-void

    .line 373
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oppo/debug/ASSERT;->assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 430
    return-void
.end method

.method private static assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .prologue
    .line 419
    invoke-static {}, Lcom/oppo/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p1, p2, :cond_0

    .line 420
    invoke-static {p0}, Lcom/oppo/debug/ASSERT;->failSame(Ljava/lang/String;)V

    .line 422
    :cond_0
    return-void
.end method

.method private static assertNull(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 380
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oppo/debug/ASSERT;->assertNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    return-void
.end method

.method private static assertNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 388
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/oppo/debug/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    .line 389
    return-void

    .line 388
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static assertSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/oppo/debug/ASSERT;->assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 410
    return-void
.end method

.method private static assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .prologue
    .line 397
    invoke-static {}, Lcom/oppo/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p1, p2, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/oppo/debug/ASSERT;->failNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static assertTrue(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "condition"    # Z

    .prologue
    .line 137
    invoke-static {}, Lcom/oppo/debug/ASSERT;->getAssertEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 138
    invoke-static {p0}, Lcom/oppo/debug/ASSERT;->fail(Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method

.method private static assertTrue(Z)V
    .locals 1
    .param p0, "condition"    # Z

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/oppo/debug/ASSERT;->assertTrue(Ljava/lang/String;Z)V

    .line 148
    return-void
.end method

.method private static copy2File(Ljava/io/BufferedReader;Ljava/io/File;)Z
    .locals 6
    .param p0, "br"    # Ljava/io/BufferedReader;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 620
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 621
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 624
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v2, 0x0

    .line 629
    .local v2, "line":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 630
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 631
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 632
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 635
    :catchall_0
    move-exception v4

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 639
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 640
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 642
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return v3

    .line 635
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "line":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 638
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private static copy2File(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 592
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 593
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 596
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    .local v3, "out":Ljava/io/OutputStream;
    const/16 v5, 0x1000

    :try_start_1
    new-array v0, v5, [B

    .line 602
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-ltz v1, :cond_1

    .line 603
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 604
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 607
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 611
    .end local v3    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 612
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 614
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return v4

    .line 607
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v3    # "out":Ljava/io/OutputStream;
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 610
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    .line 568
    const/4 v2, 0x0

    .line 571
    .local v2, "result":Z
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1, p1}, Lcom/oppo/debug/ASSERT;->copy2File(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 576
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 583
    .end local v1    # "in":Ljava/io/InputStream;
    :goto_0
    return v2

    .line 576
    .restart local v1    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 578
    .end local v1    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 580
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static disableInterrupt()V
    .locals 3

    .prologue
    .line 492
    :try_start_0
    sget-object v1, Lcom/oppo/debug/ASSERT;->rt:Ljava/lang/Runtime;

    const-string v2, "/system/bin/sh /system/bin/disableinterrupt.sh"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 493
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 494
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static displayErrorInfo(Ljava/lang/String;)V
    .locals 2
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 715
    const-string/jumbo v0, "persist.sys.assert.panic"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Lcom/oppo/debug/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    const-string/jumbo v0, "ro.runtime.assert"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/oppo/debug/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    const-string/jumbo v0, "ro.runtime.assert"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Lcom/oppo/debug/ASSERT;->setSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-static {p0}, Lcom/oppo/debug/ASSERT;->displayErrorInfo_native(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static native displayErrorInfo_native(Ljava/lang/String;)V
.end method

.method public static epitaph(Ljava/io/File;Ljava/lang/String;I)Z
    .locals 17
    .param p0, "temp"    # Ljava/io/File;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 729
    const/4 v9, 0x0

    .line 730
    .local v9, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 731
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 732
    .local v3, "bw":Ljava/io/BufferedWriter;
    const/4 v12, 0x0

    .line 734
    .local v12, "process":Ljava/lang/String;
    invoke-static {}, Landroid/os/OppoAssertTip;->getInstance()Landroid/os/OppoAssertTip;

    move-result-object v15

    sput-object v15, Lcom/oppo/debug/ASSERT;->mFunctionProxy:Landroid/os/OppoAssertTip;

    .line 735
    const/4 v13, -0x1

    .line 737
    .local v13, "result":I
    if-nez p0, :cond_0

    .line 738
    const/4 v15, 0x0

    .line 816
    :goto_0
    return v15

    .line 742
    :cond_0
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 744
    .end local v9    # "is":Ljava/io/InputStream;
    .local v10, "is":Ljava/io/InputStream;
    and-int/lit8 v15, p2, 0x4

    if-eqz v15, :cond_1

    .line 745
    :try_start_1
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v10}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    move-object v10, v9

    .line 748
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    :cond_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 751
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v15, 0x400

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 752
    .local v14, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 755
    .local v5, "count":I
    :goto_1
    const/16 v15, 0x400

    if-ge v5, v15, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .local v11, "line":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 756
    const-string v15, "-----"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v15

    if-eqz v15, :cond_3

    .line 769
    .end local v11    # "line":Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 774
    if-nez v5, :cond_5

    .line 775
    const/4 v15, 0x0

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 760
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "line":Ljava/lang/String;
    :cond_3
    :try_start_5
    const-string v15, "Process: "

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 761
    const-string v15, ":"

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 764
    :cond_4
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    const-string v15, "\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {v11}, Ljava/lang/String;->length()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v15

    add-int/2addr v5, v15

    goto :goto_1

    .line 769
    .end local v11    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v15

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v15
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 810
    .end local v5    # "count":I
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v7

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 811
    .end local v10    # "is":Ljava/io/InputStream;
    .local v7, "e":Ljava/io/IOException;
    .restart local v9    # "is":Ljava/io/InputStream;
    :goto_2
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 813
    const/4 v15, 0x0

    goto :goto_0

    .line 777
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "count":I
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    if-nez v12, :cond_6

    .line 778
    :try_start_7
    const-string v12, "NONE"

    .line 781
    :cond_6
    invoke-static {v12}, Lcom/oppo/debug/ASSERT;->isFiltedProcess(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 782
    const/4 v15, 0x0

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 785
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "is":Ljava/io/InputStream;
    :cond_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12}, Lcom/oppo/debug/ASSERT;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".txt"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 786
    .local v8, "fn":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 787
    .local v6, "dest":Ljava/io/File;
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 789
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    and-int/lit8 v15, p2, 0x4

    if-eqz v15, :cond_8

    .line 790
    :try_start_8
    new-instance v10, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v10, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    move-object v9, v10

    .line 793
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :cond_8
    invoke-static {v9, v6}, Lcom/oppo/debug/ASSERT;->copy2File(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 794
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 796
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Please check "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " file for more information ..."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 800
    .local v4, "content":Ljava/lang/String;
    const-string/jumbo v15, "persist.sys.assert.state"

    const-string/jumbo v16, "true"

    invoke-static/range {v15 .. v16}, Lcom/oppo/debug/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "false"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 801
    const-string v15, "assert state is close"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    :goto_3
    const/4 v15, 0x1

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 803
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :cond_9
    sget-object v15, Lcom/oppo/debug/ASSERT;->mFunctionProxy:Landroid/os/OppoAssertTip;

    invoke-virtual {v15, v4}, Landroid/os/OppoAssertTip;->requestShowAssertMessage(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    move-result v13

    goto :goto_3

    .line 810
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "content":Ljava/lang/String;
    .end local v5    # "count":I
    .end local v6    # "dest":Ljava/io/File;
    .end local v8    # "fn":Ljava/lang/String;
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v7

    goto/16 :goto_2

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v7

    move-object v9, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    goto/16 :goto_2

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "count":I
    .restart local v6    # "dest":Ljava/io/File;
    .restart local v8    # "fn":Ljava/lang/String;
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v7

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method private static execCommand(Ljava/lang/String;)V
    .locals 5
    .param p0, "command"    # Ljava/lang/String;

    .prologue
    .line 530
    if-nez p0, :cond_0

    .line 563
    :goto_0
    return-void

    .line 535
    :cond_0
    :try_start_0
    sget-object v3, Lcom/oppo/debug/ASSERT;->rt:Ljava/lang/Runtime;

    invoke-virtual {v3, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 536
    .local v2, "process":Ljava/lang/Process;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 551
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 554
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 558
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "process":Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 559
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 556
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "process":Ljava/lang/Process;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v3
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 560
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "process":Ljava/lang/Process;
    :catch_1
    move-exception v1

    .line 561
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static fail()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/debug/ASSERT;->fail(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static fail(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "e":Ljava/lang/Error;
    invoke-static {v0}, Lcom/oppo/debug/ASSERT;->fail(Ljava/lang/Throwable;)V

    .line 122
    return-void
.end method

.method public static fail(Ljava/lang/Throwable;)V
    .locals 9
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    invoke-static {}, Lcom/oppo/debug/ASSERT;->getAssertEnable()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/oppo/debug/ASSERT;->isFiltedProcess(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 85
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 86
    .local v6, "sw":Ljava/io/StringWriter;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 87
    .local v4, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 89
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "stacktrace":Ljava/lang/String;
    invoke-static {}, Lcom/oppo/debug/ASSERT;->getProcessName_native()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "processname":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 94
    const-string v3, "NONE"

    .line 97
    :cond_0
    invoke-static {}, Lcom/oppo/debug/ASSERT;->disableInterrupt()V

    .line 99
    invoke-static {v3, v5}, Lcom/oppo/debug/ASSERT;->getDisplayInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "displayinfo":Ljava/lang/String;
    invoke-static {v3}, Lcom/oppo/debug/ASSERT;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "fn":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v2, "logfile":Ljava/io/File;
    invoke-static {v2, v0}, Lcom/oppo/debug/ASSERT;->saveErrorLog(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\nPlease check"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".txt for more information ..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/oppo/debug/ASSERT;->displayErrorInfo(Ljava/lang/String;)V

    .line 113
    .end local v0    # "displayinfo":Ljava/lang/String;
    .end local v1    # "fn":Ljava/lang/String;
    .end local v2    # "logfile":Ljava/io/File;
    .end local v3    # "processname":Ljava/lang/String;
    .end local v4    # "pw":Ljava/io/PrintWriter;
    .end local v5    # "stacktrace":Ljava/lang/String;
    .end local v6    # "sw":Ljava/io/StringWriter;
    :cond_1
    return-void
.end method

.method private static failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .prologue
    .line 456
    invoke-static {p0, p1, p2}, Lcom/oppo/debug/ASSERT;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/debug/ASSERT;->fail(Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method private static failNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .prologue
    .line 444
    const-string v0, ""

    .line 446
    .local v0, "formatted":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expected same:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> was not:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/debug/ASSERT;->fail(Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method private static failSame(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 433
    const-string v0, ""

    .line 435
    .local v0, "formatted":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expected not same"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/debug/ASSERT;->fail(Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .prologue
    .line 460
    const-string v0, ""

    .line 462
    .local v0, "formatted":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expected:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> but was:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getAssertEnable()Z
    .locals 2

    .prologue
    .line 484
    const-string/jumbo v0, "persist.sys.assert.enable"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/oppo/debug/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static getDisplayInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "process"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 674
    const-string/jumbo v0, "java.lang.ASSERT."

    .line 675
    .local v0, "assertPre":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v8, 0x400

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 676
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 678
    .local v7, "substr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 679
    .local v4, "istart":I
    move-object v6, p1

    .line 680
    .local v6, "st":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 682
    .local v2, "count":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "JAVA ASSERT ERROR!!!\r\nProcess: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 685
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 687
    .local v1, "ch":C
    const/16 v8, 0xa

    if-ne v1, v8, :cond_2

    .line 688
    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 690
    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 691
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    const-string v8, "\r\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 696
    const/4 v7, 0x0

    .line 684
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 698
    :cond_2
    add-int/lit8 v8, v2, -0x1

    if-ne v3, v8, :cond_1

    .line 699
    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    const-string v8, "\r\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 705
    .end local v1    # "ch":C
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private static getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "processName"    # Ljava/lang/String;

    .prologue
    .line 499
    const/4 v6, 0x0

    .line 500
    .local v6, "logpath":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "/cache/admin/assertlog"

    aput-object v11, v8, v10

    .line 502
    .local v8, "path":[Ljava/lang/String;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v9, v0, v4

    .line 503
    .local v9, "s":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 505
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 506
    :cond_0
    move-object v6, v9

    .line 512
    .end local v3    # "f":Ljava/io/File;
    .end local v9    # "s":Ljava/lang/String;
    :cond_1
    if-nez v6, :cond_3

    .line 513
    const/4 v10, 0x0

    .line 521
    :goto_1
    return-object v10

    .line 502
    .restart local v3    # "f":Ljava/io/File;
    .restart local v9    # "s":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 516
    .end local v3    # "f":Ljava/io/File;
    .end local v9    # "s":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 517
    .local v2, "dt":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v1, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 518
    .local v1, "df":Ljava/text/DateFormat;
    const-string v7, ""

    .line 519
    .local v7, "now":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 521
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1
.end method

.method private static native getProcessName_native()Ljava/lang/String;
.end method

.method private static native getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static isFiltedProcess(Ljava/lang/String;)Z
    .locals 6
    .param p0, "process"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 472
    const/4 v1, 0x0

    .line 473
    .local v1, "filtedproc":Ljava/lang/String;
    if-eqz p0, :cond_1

    move-object v0, p0

    .line 474
    .local v0, "crashproc":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "persist.assert.filtedproc"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/oppo/debug/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez v2, :cond_2

    .line 480
    :cond_0
    :goto_1
    return v3

    .line 473
    .end local v0    # "crashproc":Ljava/lang/String;
    .end local v2    # "prop":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/oppo/debug/ASSERT;->getProcessName_native()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 480
    .restart local v0    # "crashproc":Ljava/lang/String;
    .restart local v2    # "prop":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static panicKernel()V
    .locals 2

    .prologue
    .line 709
    const-string/jumbo v0, "persist.sys.assert.panic"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Lcom/oppo/debug/ASSERT;->getSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    invoke-static {}, Lcom/oppo/debug/ASSERT;->panic_native()V

    .line 712
    :cond_0
    return-void
.end method

.method private static native panic_native()V
.end method

.method private static declared-synchronized saveErrorLog(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "trace"    # Ljava/lang/String;

    .prologue
    .line 525
    const-class v1, Lcom/oppo/debug/ASSERT;

    monitor-enter v1

    :try_start_0
    invoke-static {p1, p0}, Lcom/oppo/debug/ASSERT;->writeFile(Ljava/lang/String;Ljava/io/File;)Z

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpstate -o "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -t assert"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/debug/ASSERT;->execCommand(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    monitor-exit v1

    return-void

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native setSystemProperties_native(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static writeFile(Ljava/lang/String;Ljava/io/File;)Z
    .locals 5
    .param p0, "longMsg"    # Ljava/lang/String;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    .line 647
    const/4 v2, 0x0

    .line 649
    .local v2, "result":Z
    if-eqz p0, :cond_1

    .line 651
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 652
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 655
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, p0, v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 659
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    const/4 v2, 0x1

    .line 662
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 670
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    :cond_1
    :goto_0
    return v2

    .line 662
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 664
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 665
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 666
    const/4 v2, 0x0

    goto :goto_0
.end method
