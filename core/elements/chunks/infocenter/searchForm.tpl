<form method="get" action="/search">
    <div class="search-form">
        <div class="row">
            <div class="col-xs-5ths">
                <input value="" type="text" class="form-control" name="search" placeholder="Введите запрос">
            </div>
            <div class="col-xs-5ths">
                <select class="form-control" name="cat">
                    <option value='0'>Все разделы</option>
                    <option value='5012'>Практические решения</option>
                    <option value='5042'>Сложные ситуации</option>
                    <option value='5046'>Кейсы проектов</option>
                    <option value='5044'>Полезные материалы</option>
                    <option value='5014'>Новости</option>
                    <option value='5017'>Арбитражная практика</option>
                    <option value='5013'>Законодательство</option>
                    <option value='5024'>Контролируемые сделки</option>
                    <option value='5015'>Минфин и ФНС</option>
                    <option value='5016'>МСФО</option>
                    <option value='5018'>Страховые взносы</option>
                    <option value='5022'>Специальные режимы</option>
                </select>
            </div>
            <div class="col-xs-5ths">
                <select class="form-control" name="tag">
                    <option value='0'>Все теги</option>
                    <option value='НДС'>НДС</option>
                    <option value='Прибыль'>Прибыль</option>
                    <option value='НДФЛ'>НДФЛ</option>
                    <option value='Другие налоги'>Другие налоги</option>
                    <option value='Контролируемые'>Контролируемые</option>
                    <option value='Трансфертное'>Трансфертное</option>
                    <option value='Взносы'>Взносы</option>
                    <option value='Спецрежимы'>Спецрежимы</option>
                    <option value='Практика'>Практика</option>
                    <option value='Нововведения'>Нововведения</option>
                    <option value='Изменения'>Изменения</option>
                    <option value='Общее'>Общее</option>
                </select>
            </div>
            <div class="col-xs-5ths">
                <select class="form-control" name="searchlast">
                    <option value='0'>Все последние</option>
                    <option value='1'>Самые читаемые</option>
                    <option value='2'>Самые популярные</option>
                    <option value='3'>Самое важное</option>
                </select>
            </div>
            <div class="col-xs-5ths">
                <button type="submit" class="upper-text">найти публикации</button>
            </div>
        </div>
    </div>
</form>
<script>
    $(document).ready(function(){
        var hash = Hash.get();
        console.log(hash.cat);
        if (hash.search!=undefined){
            $('input[name="search"]').val(hash.search);
        }
        if (hash.cat!=undefined){
            $('select[name="cat"]>option[value="'+hash.cat+'"]').attr('selected','selected');
        }
        if (hash.tag!=undefined){
            $('select[name="tag"]>option[value="'+hash.tag+'"]').attr('selected','selected');
        }
        if (hash.searchlast!=undefined){
            $('select[name="searchlast"]>option[value="'+hash.searchlast+'"]').attr('selected','selected');
        }
        
    });
</script>